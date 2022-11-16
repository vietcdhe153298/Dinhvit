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
	public partial class SignIn : Form
	{
		public static User a = null;
		public SignIn()
		{
			InitializeComponent();
			Password.PasswordChar = '*';
		}

		private void button1_Click(object sender, EventArgs e)
		{
			PRN211Context context = new PRN211Context();
			if (UserName.Text == "" || Password.Text == "")
			{
				MessageBox.Show("Username or Password can't blank");
			}
			else
			{
				a = context.Users.FirstOrDefault(x => x.UserName.Equals(UserName.Text) && x.Password.Equals(Password.Text));
				if (a != null)
				{
					this.Hide();
					Home home = new Home();
					home.Show();
				}
				else
				{
					MessageBox.Show("Username or Password is incorrect");
				}
			}
		}

		private void button1_KeyPress(object sender, KeyPressEventArgs e)
		{
			button1_Click(sender, e);
		}

		private void button1_KeyDown(object sender, KeyEventArgs e)
		{
            if (e.KeyData == Keys.Enter)
            {
                button1_Click(sender, e);
            }
        }

		private void SignIn_Load(object sender, EventArgs e)
		{
            this.KeyPreview = true;
            this.KeyDown += button1_KeyDown;
        }
	}
}
