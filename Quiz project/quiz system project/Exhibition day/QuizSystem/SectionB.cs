using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace QuizSystem
{
    public partial class SectionB : Form
    {
        ShowQuestionsheet sq = new ShowQuestionsheet();
        public static int _min , _sec ;

        public SectionB(int m,int s)
        {
            InitializeComponent();
            _min = m;
            _sec = s;
            timer1.Start();

        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                sq.check(Q1a, Q1b, Q1c, Q1d, Q2a, Q2b, Q2c, Q2d, Q3a, Q3b, Q3c, Q3d, Q4a, Q4b, Q4c, Q4a, Q5a, Q5b, Q5c, Q5d);
                SectionC secA = new SectionC(_min,_sec);
                secA.Show();
                this.Hide();
                sq.totalmarks();
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }



        }

        private void SectionB_Load(object sender, EventArgs e)
        {
            try
            {
                sq.test("B", q1, Q1a, Q1b, Q1c, Q1d, q2, Q2a, Q2b, Q2c, Q2d, q3, Q3a, Q3b, Q3c, Q3d, q4, Q4d, Q4b, Q4c, Q4a, q5, Q5a, Q5b, Q5c, Q5d);
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }

        }

        private void Q4a_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            decrease_sec();
            showtime();
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

        

        
    }
}
