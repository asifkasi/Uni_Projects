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
    public partial class SectionD : Form
    {
        public static int _min, _sec;
        Connection con = new Connection();
        ShowQuestionsheet sq = new ShowQuestionsheet();

        public SectionD(int m, int s)
        {
            InitializeComponent();

            _min = m;
            _sec = s;
            timer1.Start();

        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                sq.check(Q1a, Q1b, Q1c, Q1d, Q2a, Q2b, Q2c, Q2d, Q3a, Q3b, Q3c, Q3d, Q4a, Q4b, Q4c, Q4d, Q5a, Q5b, Q5c, Q5d);
                this.Hide();


                MessageBox.Show("Total correct answers are " + sq.totalmarks());








                Application.Exit();
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }

        }

        private void SectionD_Load(object sender, EventArgs e)
        {
            try
            {
                sq.test("D", q1, Q1a, Q1b, Q1c, Q1d, q2, Q2a, Q2b, Q2c, Q2d, q3, Q3a, Q3b, Q3c, Q3d, q4, Q4a, Q4b, Q4c, Q4d, q5, Q5a, Q5b, Q5c, Q5d);
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                sq.check(Q1a, Q1b, Q1c, Q1d, Q2a, Q2b, Q2c, Q2d, Q3a, Q3b, Q3c, Q3d, Q4a, Q4b, Q4c, Q4d, Q5a, Q5b, Q5c, Q5d);
                this.Hide();
                MessageBox.Show("Total correct answers are " + sq.totalmarks());
                Form1 f = new Form1();
                SqlDataAdapter sda = new SqlDataAdapter("Update login set Test = 'True' WHERE User_id = '" + f.asifaa() + "'", con.getcon());
                sda.SelectCommand.ExecuteNonQuery();

                SqlDataAdapter sda1 = new SqlDataAdapter("Update login set Date = '" + DateTime.Now.ToString("dd/MM/yyyyy") + "' WHERE User_id = '" + f.asifaa() + "'", con.getcon());
                sda1.SelectCommand.ExecuteNonQuery();
                //SqlDataAdapter up_stu_id = new SqlDataAdapter("Update login set T_Marks'"+sq.total_marks()+"' WHERE User_id = '" +fa.asifaa  + "'", con.getcon());
                //up_stu_id.SelectCommand.ExecuteNonQuery();
                Application.Exit();
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
         
        }


        public void decrease_sec() // decrement in sec
        {
            if (_sec == 00)
            {

                decrese_min();
                _sec = 59;
            }
            else
            {
                _sec--;

            }
        }

        public void decrese_min() // decrement in min
        {
            if (_min == 0)
            {
                Stoptimer();
            }
            else
            {
                _min--;
            }
        }

        void Stoptimer() // when timer stops
        {
            timer1.Stop();
            //showtime();
            MessageBox.Show("Time finished");
            Application.Exit();


        }
        void showtime() // noting time in minutes and seconds
        {
            min.Text = _min.ToString();
            sec.Text = _sec.ToString();
        }



        public int timpass()
        {
            int mif = 0;

            mif = _min;

            return mif;

        }

        public int secpass()
        {
            int mif = 0;

            mif = _sec;

            return mif;

        }

        private void timer1_Tick_1(object sender, EventArgs e)
        {

            decrease_sec();
            showtime();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            decrease_sec();
            showtime();
        }
    }
}
