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
	public partial class DoanhThu : Form
	{
		private static int tID = 0;
		private static int fID = 0;
		public DoanhThu()
		{
			InitializeComponent();
		}

		private void DoanhThu_Load(object sender, EventArgs e)
		{
			PRN211Context context = new PRN211Context();
			cbBan.DataSource = context.Tables.Select(x => x.TableName).Distinct().ToList();
			cbMon.DataSource = context.Foods.Select(x => x.FoodName ).Distinct().ToList();
			dataGridView1_Load();
		}

		private void dataGridView1_Load()
		{
			PRN211Context context = new PRN211Context();
			dataGridView1.DataSource = (from b in context.Bills
										join bd in context.BillDetails on b.BillId equals bd.BillId
										join f in context.Foods on bd.FoodId equals f.FoodId
										join o in context.Options on f.FoodId equals o.FoodId
										join t in context.Tables on b.TableId equals t.TableId
										where b.BillId == bd.BillId && bd.Size == o.Size && bd.FoodId == o.FoodId && b.TableId == t.TableId && b.Status == true
										select new
										{
											BillId = b.BillId,
											TableName = t.TableName, 
											FoodName = f.FoodName,
											Size = bd.Size,
											UnitPrice = o.Price,
											Amount = bd.Amount,
											TotalPrice = b.TotalPrice
										}).ToList();
		}

		private void button1_Click(object sender, EventArgs e)
		{
			PRN211Context context = new PRN211Context();
			var ds = (from b in context.Bills
										join bd in context.BillDetails on b.BillId equals bd.BillId
										join f in context.Foods on bd.FoodId equals f.FoodId
										join o in context.Options on f.FoodId equals o.FoodId
										join t in context.Tables on b.TableId equals t.TableId
										where b.BillId == bd.BillId && bd.Size == o.Size && bd.FoodId == o.FoodId
										&& b.TableId == t.TableId && b.CheckOut >= dtpFrom.Value && b.CheckOut <= dtpTo.Value
										select new
										{
											BillId = b.BillId,
											TableName = t.TableName,
											FoodName = f.FoodName,
											Size = bd.Size,
											UnitPrice = o.Price,
											Amount = bd.Amount,
											TotalPrice = b.TotalPrice
										}).ToList();
			dataGridView1.DataSource = ds;
			int total = 0;
			foreach (var c in ds)
			{
				total += Convert.ToInt32(c.TotalPrice);
			}
			textBox1.Text = string.Format("{0:#.###}", total);
		}

		private void button2_Click(object sender, EventArgs e)
		{
			dataGridView1_Load();
			textBox1.Text = "";
		}

		private void cbBan_SelectedIndexChanged(object sender, EventArgs e)
		{
			PRN211Context context = new PRN211Context();
			tID = context.Tables.FirstOrDefault(x => x.TableName.Equals(cbBan.SelectedItem.ToString())).TableId;
			dataGridView1.DataSource = (from b in context.Bills
										join bd in context.BillDetails on b.BillId equals bd.BillId
										join f in context.Foods on bd.FoodId equals f.FoodId
										join o in context.Options on f.FoodId equals o.FoodId
										join t in context.Tables on b.TableId equals t.TableId
										where b.BillId == bd.BillId && bd.Size == o.Size && bd.FoodId == o.FoodId && b.TableId == t.TableId && t.TableId == tID
										select new
										{
											BillId = b.BillId,
											TableName = t.TableName,
											FoodName = f.FoodName,
											Size = bd.Size,
											UnitPrice = o.Price,
											Amount = bd.Amount,
											TotalPrice = b.TotalPrice
										}).ToList();
		}

		private void cbMon_SelectedIndexChanged(object sender, EventArgs e)
		{
			PRN211Context context = new PRN211Context();
			fID = context.Foods.FirstOrDefault(x => x.FoodName.Equals(cbMon.SelectedItem.ToString())).FoodId;
			dataGridView1.DataSource = (from b in context.Bills
										join bd in context.BillDetails on b.BillId equals bd.BillId
										join f in context.Foods on bd.FoodId equals f.FoodId
										join o in context.Options on f.FoodId equals o.FoodId
										join t in context.Tables on b.TableId equals t.TableId
										where b.BillId == bd.BillId && bd.Size == o.Size && bd.FoodId == o.FoodId && b.TableId == t.TableId && f.FoodId == fID
										select new
										{
											BillId = b.BillId,
											TableName = t.TableName,
											FoodName = f.FoodName,
											Size = bd.Size,
											UnitPrice = o.Price,
											Amount = bd.Amount,
											TotalPrice = b.TotalPrice
										}).ToList();
		}

		private void button3_Click(object sender, EventArgs e)
		{
			dataGridView1_Load();
			textBox1.Text = "";
		}
	}
}
