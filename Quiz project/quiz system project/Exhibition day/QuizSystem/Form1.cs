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
    public partial class Form1 : Form
    {
        //static String a = 0;
        static string a;
        public Form1()
        {
            InitializeComponent();
        }

        
        

        private void button2_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "" && textBox2.Text == "")
            {
                MessageBox.Show("Felds are Empty");

            }

            else
            {

                Connection con = new Connection();
                SqlDataAdapter sda = new SqlDataAdapter("select * from login where Category = '" + comboBox1.Text.Trim() + "' AND User_id ='" + textBox1.Text + "'COLLATE SQL_Latin1_General_CP1_CS_AS AND Password= '" + textBox2.Text + "' COLLATE SQL_Latin1_General_CP1_CS_AS AND Test = 'False'", con.getcon());
                sda.SelectCommand.ExecuteNonQuery();
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    if (comboBox1.SelectedItem.ToString().Trim() == "Admin")
                    {
                        Admin_Page ad = new Admin_Page();
                        ad.Show();
                        this.Hide();
                    }

                    else if (comboBox1.SelectedItem.ToString().Trim() == "Student")
                    {


                        //SqlDataAdapter up_stu_id = new SqlDataAdapter("Update login set Test = 'True' WHERE User_id = '" + textBox1 + "'", con.getcon());
                        //up_stu_id.SelectCommand.ExecuteNonQuery();

                        //SqlDataAdapter up_date = new SqlDataAdapter("Update login set Date = '" + DateTime.Now.ToString("dd/MM/yyyyy") + "' WHERE User_id = '" + textBox1 + "'", con.getcon());
                        //up_date.SelectCommand.ExecuteNonQuery();

                        a = textBox1.Text;
                        SectionA secA = new SectionA();
                        secA.Show();
                        this.Hide();
                    }
                }
                else
                {
                    DialogResult dialog = MessageBox.Show("Wrong Id,Password or You May Not Give Test More Than One Time", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    comboBox1.Text = "                Setect";
                    textBox1.Text = "";
                    textBox2.Text = "";
                }
            }
        }
        public string asifaa()
        {
            string d = a;

            return d;

        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked == true)
            {
                textBox2.UseSystemPasswordChar = true;
            }
            else
            {
                textBox2.UseSystemPasswordChar = false;
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        

        
        
    }
}
