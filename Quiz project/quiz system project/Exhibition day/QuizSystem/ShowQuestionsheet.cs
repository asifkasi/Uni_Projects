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
    class ShowQuestionsheet
    {
     
        public int correct_ans = 0;

        DataRow rn;

        DataTable dt;

        randomnumbergenerate num;

        public  int total_marks = 0;

        static int tmepmark = 0;


        public int[] ansss = new int[4];
        
        int temp = 0;
        
        string[] Questions_Answers = new string[5];

        public void test(string sec,Label q1,RadioButton Q1a,RadioButton Q1b,RadioButton Q1c,RadioButton Q1d ,Label q2,RadioButton Q2a,RadioButton Q2b,RadioButton Q2c,RadioButton Q2d ,Label q3,RadioButton Q3a,RadioButton Q3b,RadioButton Q3c,RadioButton Q3d ,Label q4,RadioButton Q4a,RadioButton Q4b,RadioButton Q4c,RadioButton Q4d ,Label q5,RadioButton Q5a,RadioButton Q5b,RadioButton Q5c,RadioButton Q5d )
        {

            Connection conn = new Connection();
            dt = new DataTable();

            SqlCommand cmd = new SqlCommand("select * from question_sheet where section='Section "+sec+"'", conn.getcon());

            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);

            num = new randomnumbergenerate();

            rn = dt.Rows[num.generate(0, dt.Rows.Count)];

            string[] ans = new string[5];

            string ans1 = rn["correct_ans"].ToString();

            showquestions(q1, Q1a, Q1b, Q1c, Q1d);
            showquestions(q2, Q2a, Q2b, Q2c, Q2d);
            showquestions(q3, Q3a, Q3b, Q3c, Q3d);
            showquestions(q4, Q4a, Q4b, Q4c, Q4d);
            showquestions(q5, Q5a, Q5b, Q5c, Q5d);
        }

        public void check(RadioButton Q1a, RadioButton Q1b, RadioButton Q1c, RadioButton Q1d, RadioButton Q2a, RadioButton Q2b, RadioButton Q2c, RadioButton Q2d, RadioButton Q3a, RadioButton Q3b, RadioButton Q3c, RadioButton Q3d, RadioButton Q4a, RadioButton Q4b, RadioButton Q4c, RadioButton Q4d, RadioButton Q5a, RadioButton Q5b, RadioButton Q5c, RadioButton Q5d)
        {

            anschecked(Q1a, 0);
            anschecked(Q1b, 0);
            anschecked(Q1c, 0);
            anschecked(Q1d, 0);


            anschecked(Q2a, 1);
            anschecked(Q2b, 1);
            anschecked(Q2c, 1);
            anschecked(Q2d, 1);

            anschecked(Q3a, 2);
            anschecked(Q3b, 2);
            anschecked(Q3c, 2);
            anschecked(Q3d, 2);


            anschecked(Q4a, 3);
            anschecked(Q4b, 3);
            anschecked(Q4c, 3);
            anschecked(Q4d, 3);


            anschecked(Q5a, 4);
            anschecked(Q5b, 4);
            anschecked(Q5c, 4);
            anschecked(Q5d, 4);

        }
        
        
        public int totalmarks()
        {
            
            total_marks = tmepmark;
            return total_marks;
        }
        public void showquestions(Label Quetions, RadioButton rd1, RadioButton rd2, RadioButton rd3, RadioButton rd4)
        {
            Quetions.Text = rn["Question"].ToString();

            randomnumbergenerate asif = new randomnumbergenerate();
            string[] op = new string[4] { rn["option_a"].ToString(), rn["option_b"].ToString(), rn["option_c"].ToString(), rn["option_d"].ToString() };


            rd1.Text = op[asif.generateop(0, 4)];
            rd2.Text = op[asif.generateop(0, 4)];
            rd3.Text = op[asif.generateop(0, 4)];
            rd4.Text = op[asif.generateop(0, 4)];



            Questions_Answers[temp] = rn["correct_ans"].ToString();

            rn = dt.Rows[num.generate(1, dt.Rows.Count)];
            temp++;



        }
        public void anschecked(RadioButton rd, int num)
        {

            if (rd.Checked == true)
            {
                if (rd.Text == Questions_Answers[num])
                {
                    correct_ans++;
                    tmepmark++;
                }
            }



        }
          
    }
}
