using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace polishNotation_p0st_infix
{
    class Program
    {
        
        static void Main(string[] args)
        {
            // string Expresation = "3+(4+6^2)*((8-3)*(2-5)+4)-2*6";
            string Expresation = "(8+3^2-3)";

            //string Expresation = "(-b+(b*b-4*a*c)^2)/(2*a)";
            
            Console.WriteLine(Expresation);
            
            createstack stack = new createstack(Expresation.Length);
            string output = "";
            
            stack.polis(ref output, ref Expresation);

            Console.WriteLine(output);
            
            Console.ReadKey() ;
        }
    }
}
