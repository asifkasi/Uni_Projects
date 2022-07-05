using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace postfix_simplificatoin
{
    class Program
    {
        
        static void Main(string[] args)
        {

            string p = "3462*+83-25-*4+*+26*-";
            createstackclass abc = new createstackclass(p.Length);

            Console.WriteLine(p);
            string result = abc.evaluationofpostfix(ref p);
            Console.WriteLine(result);
            Console.ReadLine();
        }
    }
}
