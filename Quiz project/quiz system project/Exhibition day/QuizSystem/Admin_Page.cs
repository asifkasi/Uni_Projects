using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace QuizSystem
{
    public partial class Admin_Page : Form
    {
        public Admin_Page()
        {
            InitializeComponent();
        }

        private void Admin_Page_Load(object sender, EventArgs e)
        {
            Connection con = new Connection();
            SqlDataAdapter sda = new SqlDataAdapter("select * from login where category = 'Student'", con.getcon());
            sda.SelectCommand.ExecuteNonQuery();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            dataGridView1.DataSource = dt;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        
    }
}
