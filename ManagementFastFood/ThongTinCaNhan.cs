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
	public partial class ThongTinCaNhan : Form
	{
		public ThongTinCaNhan()
		{
			InitializeComponent();
		}

		private void ThongTinCaNhan_Load(object sender, EventArgs e)
		{
			User a = SignIn.a;
			textBox1.Text = SignIn.a.UserId.ToString();
			textBox2.Text = SignIn.a.FullName;
			textBox5.Text = SignIn.a.Address;
			textBox6.Text = SignIn.a.Mobile;
			dateTimePicker1.Value = (DateTime) SignIn.a.Dob;
			if (SignIn.a.Gender == true)
			{
				radioButton1.Checked = true;
				radioButton2.Checked = false;
			}
			else
			{
				radioButton1.Checked = false;
				radioButton2.Checked = true;
			}
			if (SignIn.a.Avatar != null)
				pictureBox1.Image = Image.FromFile(SignIn.a.Avatar);
		}

		private void button2_Click(object sender, EventArgs e)
		{
			SignIn.a.FullName = textBox2.Text;
			SignIn.a.Dob = dateTimePicker1.Value.Date;
			if (radioButton1.Checked == true)
			{
				SignIn.a.Gender = true;
			}
			else
			{
				SignIn.a.Gender = false;
			}
			SignIn.a.Address = textBox5.Text;
			SignIn.a.Mobile = textBox6.Text;
			SignIn.a.Avatar = pictureBox1.ImageLocation;
			textBox2.Text = pictureBox1.ImageLocation;
			PRN211Context context = new PRN211Context();
			context.Users.Update(SignIn.a);
			context.SaveChanges();
			ThongTinCaNhan_Load(sender, e);
		}

		private void button3_Click(object sender, EventArgs e)
		{
			this.Hide();
		}

		private void button1_Click(object sender, EventArgs e)
		{
			OpenFileDialog openFileDialog = new OpenFileDialog();
			openFileDialog.InitialDirectory = @"C:\";
			openFileDialog.Filter = "Image File | *.png; *.jpg";
			if (openFileDialog.ShowDialog() == DialogResult.OK)
			{
				pictureBox1.Image = Image.FromFile(openFileDialog.FileName);
				pictureBox1.ImageLocation = openFileDialog.FileName;
			}
		}
	}
}
