
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ManagementFastFood.Models;

namespace ManagementFastFood
{
	public partial class Home : Form
	{
        PRN211Context context = new PRN211Context();
        public static int tableID = 0;
        Boolean status = false;
        public static string tableName = null;
        public static int billID = 0;
        public static string FoodName = null;
        public static string size = null;
        public Home()
		{
			InitializeComponent();
		}
        
        private void Home_Load(object sender, EventArgs e)
        {
            if (SignIn.a.RoleId == false)
			{
                quảnLýToolStripMenuItem.Visible = false;
			}
            else
			{
                quảnLýToolStripMenuItem.Visible = true;
			}
            DSDoAn.AutoGenerateColumns = false;
            DSDoAn.Columns.Add("0", "FoodName");
            DSDoAn.Columns["0"].DataPropertyName = "FoodName";
            DSDoAn.Columns.Add("1", "Size");
            DSDoAn.Columns["1"].DataPropertyName = "Size";
            DSDoAn.Columns.Add("2", "UnitPrice");
            DSDoAn.Columns["2"].DataPropertyName = "UnitPrice";
            DSDoAn.Columns.Add("3", "Amount");
            DSDoAn.Columns["3"].DataPropertyName = "Amount";
            BanAn_Load();
            FormDatDo_Load();
        }

        private void BanAn_Load()
        {
            BanAn.Controls.Clear();// làm mới sơ đồ bàn
            List<Table> tables = context.Tables.ToList(); ;
            foreach (Table t in tables)
            {
                Button button = new Button();
                string status = null;
                button.Click += button_click;// tạo sự kiện click cho button
                button.Tag = t; // dùng để xác định ID của mỗi button
                button.Width = 120;
                button.Height = 120;
                if (t.Status == false)
                {
                    status = "Trống";
                }
                else
                {
                    status = "Đã có khách";
                    button.BackColor = Color.Green;
                }
                button.Text = "Bàn " + t.TableName + "\n" + status;
                BanAn.Controls.Add(button);
            }
        }

        private void button_click(object sender, EventArgs e)
        {
            Boolean createNew = true;
            tableID = ((sender as Button).Tag as Table).TableId;
            status = (Boolean)((sender as Button).Tag as Table).Status;
            tableName = ((sender as Button).Tag as Table).TableName;
            foreach(Bill b in context.Bills.Where(x => x.TableId == tableID))
            {
                if (b.Status == false)
				{
                    createNew = false;
				}
			}
            if (status == false && createNew == true)
			{
                Bill bill = new Bill();
                bill.TableId = tableID;
                bill.Status = false;
                context.Bills.Add(bill);
                context.SaveChanges();
                billID = bill.BillId;
            }
            else
			{
                billID = context.Bills.FirstOrDefault(x => x.TableId == tableID && x.Status == false).BillId;
			}
            DSDoAn_Load(billID, tableID);
        }

        private void FormDatDo_Load()
        {
            Category.DataSource = context.Categories.ToList();
            Category.DisplayMember = "CategoryName";
            ChuyenBan.DataSource = context.Tables.ToList();
            ChuyenBan.DisplayMember = "TableName";
		}

        private void Category_SelectedIndexChanged(object sender, EventArgs e)
        {
            string cateName = Category.Text;
            Food.DataSource = context.Foods.Where(x => x.Category.CategoryName.Equals(cateName)).ToList();
            Food.DisplayMember = "FoodName";
        }

        private void Food_SelectedIndexChanged(object sender, EventArgs e)
        {
            string foodName = Food.Text;
            Size.DataSource = context.Options.Where(x => x.Food.FoodName.Equals(foodName)).ToList();
            Size.DisplayMember = "Size";
        }

        private void DSDoAn_Load(int billID, int tableID)
        {
            var dsDo = (from b in context.Bills
                          join bd in context.BillDetails on b.BillId equals bd.BillId
                          join f in context.Foods on bd.FoodId equals f.FoodId
                          join o in context.Options on f.FoodId equals o.FoodId
                          where b.BillId == billID && b.TableId == tableID && bd.Size == o.Size && bd.FoodId == o.FoodId
                          select new
                          {
                              FoodName = f.FoodName,
                              Size = bd.Size,
                              UnitPrice = o.Price,
                              Amount = bd.Amount
                          }).ToList();
            if(dsDo.Count == 0)
            {
                context.Tables.FirstOrDefault(x => x.TableId == tableID).Status = false;
                context.SaveChanges();
            }
            else 
            DSDoAn.DataSource = dsDo;
        }

        private void addFood_Click(object sender, EventArgs e)
		{
            if (Food.Text == "")
            {
                MessageBox.Show("Chưa chọn món.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else if (Size.Text == "")
            {
                MessageBox.Show("Chưa chọn size.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                BillDetail billDetail = new BillDetail();
                billDetail.BillId = billID;
                Table table = context.Tables.FirstOrDefault(x => x.TableId == tableID);
                if (table != null) table.Status = true;
                billDetail.FoodId = context.Foods.FirstOrDefault(x => x.FoodName.Equals(Food.Text)).FoodId;
                billDetail.Size = Size.Text;
                billDetail.Amount = (byte?)Amount.Value;
                context.BillDetails.Add(billDetail);
                context.SaveChanges();
                DSDoAn.DataSource = null;
                BanAn_Load();
                DSDoAn_Load(billID, tableID);
            }
        }

		private void Transfer_Click(object sender, EventArgs e)
		{
            int move = Convert.ToInt32(ChuyenBan.Text);
            DialogResult merge = MessageBox.Show($"Bạn có muốn chuyển bàn {tableID} sang bàn {move} không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (merge == DialogResult.No)
                return;
            else
            {
                context.Tables.FirstOrDefault(x => x.TableId == tableID).Status = false;
                context.Tables.FirstOrDefault(x => x.TableId == move).Status = true;
                context.Bills.FirstOrDefault(x => x.BillId == billID).TableId = move;
                context.SaveChanges();
                BanAn_Load();
                DSDoAn_Load(billID, move);
            }
		}

		private void ThanhToan_Click(object sender, EventArgs e)
		{
            if (DSDoAn.Rows.Count == 0)
            {
                MessageBox.Show("Chưa có đồ, không thể thanh toán.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                this.Hide();
                ThanhToan thanhToan = new ThanhToan();
                thanhToan.Show();
            }
        }

		private void đăngXuấtToolStripMenuItem_Click(object sender, EventArgs e)
		{
            this.Hide();
            SignIn.a = null;
            SignIn signIn = new SignIn();
            signIn.Show();
		}

		private void chứcNăngToolStripMenuItem_Click(object sender, EventArgs e)
		{
            ThongTinCaNhan thongTinCaNhan = new ThongTinCaNhan();
            thongTinCaNhan.Show();
		}

		private void nhânViênToolStripMenuItem_Click(object sender, EventArgs e)
		{
            QuanLyTaiKhoan quanLyTaiKhoan = new QuanLyTaiKhoan();
            quanLyTaiKhoan.Show();
		}

		private void menuToolStripMenuItem_Click(object sender, EventArgs e)
		{
            Menu menu = new Menu();
            menu.Show();
		}

		private void bànToolStripMenuItem_Click(object sender, EventArgs e)
		{
            this.Hide();
            QuanLyBan quanLyBan = new QuanLyBan();
            quanLyBan.Show();

		}

		private void doanhThuToolStripMenuItem_Click(object sender, EventArgs e)
		{
            DoanhThu doanhThu = new DoanhThu();
            doanhThu.Show();
		}

        private void Merge_Click(object sender, EventArgs e)
        {
            int move = Convert.ToInt32(ChuyenBan.Text);
            if (context.Tables.FirstOrDefault(x => x.TableId == move).Status == false)
                MessageBox.Show($"Bàn làm gì có ai?", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            else
            {
                DialogResult merge = MessageBox.Show($"Bạn có muốn gộp bàn {move} và bàn {tableID} thành bàn {tableID} không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (merge == DialogResult.No)
                    return;
                else
                {
                    context.Tables.FirstOrDefault(x => x.TableId == tableID).Status = true;
                    context.Tables.FirstOrDefault(x => x.TableId == move).Status = false;
                    context.Bills.FirstOrDefault(x => x.BillId == billID).TableId = tableID;
                    context.SaveChanges();
                    BanAn_Load();
                    DSDoAn_Load(billID, move);
                }
            }
        }

        
        private void DSDoAn_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = this.DSDoAn.Rows[e.RowIndex];
                FoodName = row.Cells[0].Value.ToString();
                size = row.Cells[1].Value.ToString();                             
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (FoodName != null && size != null)
            {

                context.BillDetails.Remove(context.BillDetails.FirstOrDefault(x => x.BillId == billID && x.FoodId == context.Foods.FirstOrDefault(x => x.FoodName.Equals(FoodName)).
                    FoodId && x.Size.Equals(size)));
                context.SaveChanges();
                DSDoAn_Load(billID, tableID);

            }
            else MessageBox.Show("back");
        }

        private void BanAn_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
