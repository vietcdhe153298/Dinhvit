
namespace ManagementFastFood
{
	partial class Home
	{
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing && (components != null))
			{
				components.Dispose();
			}
			base.Dispose(disposing);
		}

		#region Windows Form Designer generated code

		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
            this.BanAn = new System.Windows.Forms.FlowLayoutPanel();
            this.menuStrip2 = new System.Windows.Forms.MenuStrip();
            this.chứcNăngToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.quảnLýToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.bànToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.nhânViênToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.doanhThuToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.đăngXuấtToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.BoxDatDo = new System.Windows.Forms.GroupBox();
            this.ChuyenBan = new System.Windows.Forms.ComboBox();
            this.ThanhToan = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.addFood = new System.Windows.Forms.Button();
            this.Size = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.Amount = new System.Windows.Forms.NumericUpDown();
            this.label3 = new System.Windows.Forms.Label();
            this.Food = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.Category = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.DSDoAn = new System.Windows.Forms.DataGridView();
            this.menuStrip2.SuspendLayout();
            this.BoxDatDo.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Amount)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DSDoAn)).BeginInit();
            this.SuspendLayout();
            // 
            // BanAn
            // 
            this.BanAn.AutoScroll = true;
            this.BanAn.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.BanAn.Location = new System.Drawing.Point(0, 44);
            this.BanAn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.BanAn.MaximumSize = new System.Drawing.Size(840, 690);
            this.BanAn.Name = "BanAn";
            this.BanAn.Size = new System.Drawing.Size(537, 690);
            this.BanAn.TabIndex = 1;
            this.BanAn.Paint += new System.Windows.Forms.PaintEventHandler(this.BanAn_Paint);
            // 
            // menuStrip2
            // 
            this.menuStrip2.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip2.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.chứcNăngToolStripMenuItem,
            this.quảnLýToolStripMenuItem,
            this.đăngXuấtToolStripMenuItem});
            this.menuStrip2.Location = new System.Drawing.Point(0, 0);
            this.menuStrip2.Name = "menuStrip2";
            this.menuStrip2.Padding = new System.Windows.Forms.Padding(5, 2, 0, 2);
            this.menuStrip2.Size = new System.Drawing.Size(1202, 24);
            this.menuStrip2.TabIndex = 2;
            this.menuStrip2.Text = "menuStrip2";
            // 
            // chứcNăngToolStripMenuItem
            // 
            this.chứcNăngToolStripMenuItem.Name = "chứcNăngToolStripMenuItem";
            this.chứcNăngToolStripMenuItem.Size = new System.Drawing.Size(122, 20);
            this.chứcNăngToolStripMenuItem.Text = "Thông tin tài khoản";
            this.chứcNăngToolStripMenuItem.Click += new System.EventHandler(this.chứcNăngToolStripMenuItem_Click);
            // 
            // quảnLýToolStripMenuItem
            // 
            this.quảnLýToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuToolStripMenuItem,
            this.bànToolStripMenuItem,
            this.nhânViênToolStripMenuItem,
            this.doanhThuToolStripMenuItem});
            this.quảnLýToolStripMenuItem.Name = "quảnLýToolStripMenuItem";
            this.quảnLýToolStripMenuItem.Size = new System.Drawing.Size(60, 20);
            this.quảnLýToolStripMenuItem.Text = "Quản lý";
            // 
            // menuToolStripMenuItem
            // 
            this.menuToolStripMenuItem.Name = "menuToolStripMenuItem";
            this.menuToolStripMenuItem.Size = new System.Drawing.Size(130, 22);
            this.menuToolStripMenuItem.Text = "Menu";
            this.menuToolStripMenuItem.Click += new System.EventHandler(this.menuToolStripMenuItem_Click);
            // 
            // bànToolStripMenuItem
            // 
            this.bànToolStripMenuItem.Name = "bànToolStripMenuItem";
            this.bànToolStripMenuItem.Size = new System.Drawing.Size(130, 22);
            this.bànToolStripMenuItem.Text = "Bàn";
            this.bànToolStripMenuItem.Click += new System.EventHandler(this.bànToolStripMenuItem_Click);
            // 
            // nhânViênToolStripMenuItem
            // 
            this.nhânViênToolStripMenuItem.Name = "nhânViênToolStripMenuItem";
            this.nhânViênToolStripMenuItem.Size = new System.Drawing.Size(130, 22);
            this.nhânViênToolStripMenuItem.Text = "Nhân viên";
            this.nhânViênToolStripMenuItem.Click += new System.EventHandler(this.nhânViênToolStripMenuItem_Click);
            // 
            // doanhThuToolStripMenuItem
            // 
            this.doanhThuToolStripMenuItem.Name = "doanhThuToolStripMenuItem";
            this.doanhThuToolStripMenuItem.Size = new System.Drawing.Size(130, 22);
            this.doanhThuToolStripMenuItem.Text = "Doanh thu";
            this.doanhThuToolStripMenuItem.Click += new System.EventHandler(this.doanhThuToolStripMenuItem_Click);
            // 
            // đăngXuấtToolStripMenuItem
            // 
            this.đăngXuấtToolStripMenuItem.Name = "đăngXuấtToolStripMenuItem";
            this.đăngXuấtToolStripMenuItem.Size = new System.Drawing.Size(73, 20);
            this.đăngXuấtToolStripMenuItem.Text = "Đăng xuất";
            this.đăngXuấtToolStripMenuItem.Click += new System.EventHandler(this.đăngXuấtToolStripMenuItem_Click);
            // 
            // BoxDatDo
            // 
            this.BoxDatDo.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.BoxDatDo.Controls.Add(this.ChuyenBan);
            this.BoxDatDo.Controls.Add(this.ThanhToan);
            this.BoxDatDo.Controls.Add(this.button1);
            this.BoxDatDo.Controls.Add(this.addFood);
            this.BoxDatDo.Controls.Add(this.Size);
            this.BoxDatDo.Controls.Add(this.label4);
            this.BoxDatDo.Controls.Add(this.Amount);
            this.BoxDatDo.Controls.Add(this.label3);
            this.BoxDatDo.Controls.Add(this.Food);
            this.BoxDatDo.Controls.Add(this.label2);
            this.BoxDatDo.Controls.Add(this.Category);
            this.BoxDatDo.Controls.Add(this.label1);
            this.BoxDatDo.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.BoxDatDo.Location = new System.Drawing.Point(543, 44);
            this.BoxDatDo.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.BoxDatDo.MaximumSize = new System.Drawing.Size(840, 195);
            this.BoxDatDo.Name = "BoxDatDo";
            this.BoxDatDo.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.BoxDatDo.Size = new System.Drawing.Size(656, 195);
            this.BoxDatDo.TabIndex = 3;
            this.BoxDatDo.TabStop = false;
            this.BoxDatDo.Text = "Đặt đồ";
            // 
            // ChuyenBan
            // 
            this.ChuyenBan.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.ChuyenBan.FormattingEnabled = true;
            this.ChuyenBan.Location = new System.Drawing.Point(486, 153);
            this.ChuyenBan.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.ChuyenBan.Name = "ChuyenBan";
            this.ChuyenBan.Size = new System.Drawing.Size(93, 27);
            this.ChuyenBan.TabIndex = 13;
            // 
            // ThanhToan
            // 
            this.ThanhToan.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.ThanhToan.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.ThanhToan.Image = global::ManagementFastFood.Properties.Resources.icons8_paycheque_48;
            this.ThanhToan.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.ThanhToan.Location = new System.Drawing.Point(486, 38);
            this.ThanhToan.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.ThanhToan.Name = "ThanhToan";
            this.ThanhToan.Size = new System.Drawing.Size(93, 63);
            this.ThanhToan.TabIndex = 12;
            this.ThanhToan.Text = "Thanh toán";
            this.ThanhToan.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.ThanhToan.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.ThanhToan.UseVisualStyleBackColor = true;
            this.ThanhToan.Click += new System.EventHandler(this.ThanhToan_Click);
            // 
            // button1
            // 
            this.button1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.button1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.button1.Image = global::ManagementFastFood.Properties.Resources.icons8_delete_48;
            this.button1.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.button1.Location = new System.Drawing.Point(326, 117);
            this.button1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(86, 63);
            this.button1.TabIndex = 9;
            this.button1.Text = "Xoá";
            this.button1.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.button1.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // addFood
            // 
            this.addFood.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.addFood.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.addFood.Image = global::ManagementFastFood.Properties.Resources.icons8_add_48;
            this.addFood.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.addFood.Location = new System.Drawing.Point(326, 35);
            this.addFood.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.addFood.Name = "addFood";
            this.addFood.Size = new System.Drawing.Size(86, 63);
            this.addFood.TabIndex = 8;
            this.addFood.Text = "Thêm";
            this.addFood.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.addFood.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.addFood.UseVisualStyleBackColor = true;
            this.addFood.Click += new System.EventHandler(this.addFood_Click);
            // 
            // Size
            // 
            this.Size.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.Size.FormattingEnabled = true;
            this.Size.Location = new System.Drawing.Point(96, 121);
            this.Size.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Size.Name = "Size";
            this.Size.Size = new System.Drawing.Size(173, 27);
            this.Size.TabIndex = 7;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label4.Location = new System.Drawing.Point(5, 162);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(64, 19);
            this.label4.TabIndex = 6;
            this.label4.Text = "Số lượng";
            // 
            // Amount
            // 
            this.Amount.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.Amount.Location = new System.Drawing.Point(96, 158);
            this.Amount.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Amount.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.Amount.Name = "Amount";
            this.Amount.Size = new System.Drawing.Size(172, 26);
            this.Amount.TabIndex = 5;
            this.Amount.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label3.Location = new System.Drawing.Point(5, 124);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(34, 19);
            this.label3.TabIndex = 4;
            this.label3.Text = "Size";
            // 
            // Food
            // 
            this.Food.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.Food.FormattingEnabled = true;
            this.Food.Location = new System.Drawing.Point(96, 78);
            this.Food.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Food.Name = "Food";
            this.Food.Size = new System.Drawing.Size(173, 27);
            this.Food.TabIndex = 3;
            this.Food.SelectedIndexChanged += new System.EventHandler(this.Food_SelectedIndexChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label2.Location = new System.Drawing.Point(5, 82);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(68, 19);
            this.label2.TabIndex = 2;
            this.label2.Text = "Thực đơn";
            // 
            // Category
            // 
            this.Category.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.Category.FormattingEnabled = true;
            this.Category.Location = new System.Drawing.Point(96, 35);
            this.Category.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Category.Name = "Category";
            this.Category.Size = new System.Drawing.Size(173, 27);
            this.Category.TabIndex = 1;
            this.Category.SelectedIndexChanged += new System.EventHandler(this.Category_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label1.Location = new System.Drawing.Point(5, 40);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(70, 19);
            this.label1.TabIndex = 0;
            this.label1.Text = "Danh mục";
            // 
            // DSDoAn
            // 
            this.DSDoAn.BackgroundColor = System.Drawing.SystemColors.InactiveCaption;
            this.DSDoAn.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.DSDoAn.Location = new System.Drawing.Point(543, 243);
            this.DSDoAn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.DSDoAn.Name = "DSDoAn";
            this.DSDoAn.RowHeadersWidth = 51;
            this.DSDoAn.RowTemplate.Height = 29;
            this.DSDoAn.Size = new System.Drawing.Size(656, 471);
            this.DSDoAn.TabIndex = 4;
            this.DSDoAn.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.DSDoAn_CellClick);
            // 
            // Home
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1202, 509);
            this.Controls.Add(this.DSDoAn);
            this.Controls.Add(this.BoxDatDo);
            this.Controls.Add(this.BanAn);
            this.Controls.Add(this.menuStrip2);
            this.MainMenuStrip = this.menuStrip2;
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.MaximumSize = new System.Drawing.Size(1682, 820);
            this.MinimumSize = new System.Drawing.Size(1196, 548);
            this.Name = "Home";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Home";
            this.Load += new System.EventHandler(this.Home_Load);
            this.menuStrip2.ResumeLayout(false);
            this.menuStrip2.PerformLayout();
            this.BoxDatDo.ResumeLayout(false);
            this.BoxDatDo.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Amount)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DSDoAn)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

		}

		#endregion

		private System.Windows.Forms.FlowLayoutPanel BanAn;
		private System.Windows.Forms.MenuStrip menuStrip2;
		private System.Windows.Forms.ToolStripMenuItem chứcNăngToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem quảnLýToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem menuToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem bànToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem nhânViênToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem doanhThuToolStripMenuItem;
		private System.Windows.Forms.GroupBox BoxDatDo;
		private System.Windows.Forms.Button addFood;
		private System.Windows.Forms.ComboBox Size;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.NumericUpDown Amount;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.ComboBox Food;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.ComboBox Category;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Button button3;
		private System.Windows.Forms.Button Transfer;
		private System.Windows.Forms.Button button1;
		private System.Windows.Forms.DataGridView DSDoAn;
		private System.Windows.Forms.ComboBox ChuyenBan;
		private System.Windows.Forms.Button ThanhToan;
		private System.Windows.Forms.ToolStripMenuItem đăngXuấtToolStripMenuItem;
	}
}