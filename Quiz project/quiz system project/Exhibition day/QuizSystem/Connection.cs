using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace QuizSystem
{
     class Connection
    {
        SqlConnection con;
        public  SqlConnection getcon()
        {
             con = new SqlConnection(@"Data Source=SAQLAIN-PC\SQLEXPRESS;Initial Catalog=quizsystem;Integrated Security=True");
            con.Open();
            return con;
        
        }


    }
}
