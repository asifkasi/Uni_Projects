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
    public partial class SectionA : Form
    {
        ShowQuestionsheet sq = new ShowQuestionsheet();
        public static int _min = 120, _sec = 00;
        
        public SectionA()
        {
            InitializeComponent();
            timer1.Start();
            
        }

        private void SectionA_Load(object sender, EventArgs e)
        {

            try
{

            sq.test("A",q1,Q1a,Q1b,Q1c,Q1d,q2,Q2a,Q2b,Q2c,Q2d,q3,Q3a,Q3b,Q3c,Q3d,q4,Q4a,Q4b,Q4c,Q4d,q5,Q5a,Q5b,Q5c,Q5d);
                   }
            catch(Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
           
            
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            try
            {
                sq.check(Q1a, Q1b, Q1c, Q1d, Q2a, Q2b, Q2c, Q2d, Q3a, Q3b, Q3c, Q3d, Q4a, Q4b, Q4c, Q4d, Q5a, Q5b, Q5c, Q5d);
                SectionB secA = new SectionB(_min,_sec);
                secA.Show();
                this.Hide();

            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
        }

        private void Q4d_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {

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
      
       

       
        

        
        
    }
}
