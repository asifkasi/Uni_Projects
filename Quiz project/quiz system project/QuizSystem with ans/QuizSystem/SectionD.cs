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
    public partial class SectionD : Form
    {
        ShowQuestionsheet sq = new ShowQuestionsheet();

        public SectionD()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            sq.check(Q1a, Q1b, Q1c, Q1d, Q2a, Q2b, Q2c, Q2d, Q3a, Q3b, Q3c, Q3d, Q4a, Q4b, Q4c, Q4d, Q5a, Q5b, Q5c, Q5d);
            this.Hide();
            
            MessageBox.Show("Total correct ans are "+ sq.totalmarks());
           // MessageBox.Show("Marks in Section A " + sq.anss[0] + "\nMarks in Section B " + sq.anss[1] + "\nMarks in Section C " + sq.anss[2] + "\nMarks in Section D " + sq.anss[3] + "\nTotal correct answers are " + sq.totalmarks());
            
            Application.Exit();

         
        }

        private void SectionD_Load(object sender, EventArgs e)
        {
            sq.test("D", q1, Q1a, Q1b, Q1c, Q1d, Q1ans, q2, Q2a, Q2b, Q2c, Q2d, Q2ans, q3, Q3a, Q3b, Q3c, Q3d, Q3ans, q4, Q4a, Q4b, Q4c, Q4d, Q4ans, q5, Q5a, Q5b, Q5c, Q5d, Q5ans);

        }
    }
}
