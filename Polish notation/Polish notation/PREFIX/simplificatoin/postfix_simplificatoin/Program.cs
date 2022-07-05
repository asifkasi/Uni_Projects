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

            string p = "+*4-2*+*63421";

            createstackclass abc = new createstackclass(p.Length);
            
            Console.WriteLine(p);

            string a = abc.interchange(p);
            
            string result = abc.evaluationofpostfix(ref a);

            
            Console.Write(result);
            
            Console.ReadLine();
        }
    }
}
