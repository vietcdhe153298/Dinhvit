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
	public partial class QuanLyBan : Form
	{
        PRN211Context context = new PRN211Context();
        public QuanLyBan()
		{
			InitializeComponent();
		}

        private void QuanLyBan_Load(object sender, EventArgs e)
        {
            BanAn_Load();
        }

        private void BanAn_Load()
        {
            BanAn.Controls.Clear();
            List<Table> tables = context.Tables.ToList(); ;
            foreach (Table t in tables)
            {
                Button button = new Button();
                button.Click += button_click;
                button.Tag = t;
                button.Width = 120;
                button.Height = 120;
                button.Text = "Bàn " + t.TableName;
                BanAn.Controls.Add(button);
            }
        }

        private void button_click(object sender, EventArgs e)
        {
            textBox1.Text = ((sender as Button).Tag as Table).TableId.ToString();
            textBox2.Text = ((sender as Button).Tag as Table).TableName;
        }

        private void btAdd_Click(object sender, EventArgs e)
		{
            Table table = new Table();
            table.TableName = textBox2.Text;
            table.Status = false;
            context.Tables.Add(table);
            context.SaveChanges();
            BanAn_Load();
        }

		private void btUpdate_Click(object sender, EventArgs e)
		{
            context.Tables.FirstOrDefault(x => x.TableId == Convert.ToInt32(textBox1.Text)).TableName = textBox2.Text;
            context.SaveChanges();
            BanAn_Load();
        }

		private void btDelete_Click(object sender, EventArgs e)
		{
            foreach (Bill b in context.Bills.Where(x => x.TableId == Convert.ToInt32(textBox1.Text)).ToList())
			{
                b.TableId = null;
			}
            context.Tables.Remove(context.Tables.FirstOrDefault(x => x.TableId == Convert.ToInt32(textBox1.Text)));
            context.SaveChanges();
            BanAn_Load();
		}

        private void QuanLyBan_FormClosed(object sender, FormClosedEventArgs e)
        {
            Home home = new Home();
            home.Show();
        }
    }
}
