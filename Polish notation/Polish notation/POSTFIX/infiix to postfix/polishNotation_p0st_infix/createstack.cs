using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace polishNotation_p0st_infix
{
    class createstack
    {
        int top;

        char[] arry;

        public createstack(int capacity)
        {
            top = -1;
            arry=new char[capacity];
        }
        
        
        public void push(char item)
        {
            if (top==arry.Length)
                Console.WriteLine("stack is full");
            else
                arry[++top] = item;
        }
        public char pop()
        {
            return arry[top--];
        }
        public  void polis(ref string o_p, ref string expre)
        {

            push('(');

            expre += ')';



            int count = 0;

            while (count != expre.Length)
            {
                char item = expre[count];

                if (item != '+' && item != '-' && item != '*' && item != '/' && item != '^' && item != '%' && item != '(' && item != ')')
                {
                    o_p += item;

                }
                else if (item == '(')
                {
                    push(item);
                }
                else if (item == '+' || item == '-')
                {
                    while (true)
                    {
                        char a = pop();

                        if (a == '(')
                        {
                            push(a);
                            break;
                        }
                        else
                        {
                            o_p += a;

                        }
                    }
                    push(item);

                }
                else if (item == '*' || item == '/' || item == '%')
                {
                    while (true)
                    {
                        char a = pop();
                        if (a == '+' || a == '-' || a == '(')
                        {
                            push(a);
                            break;
                        }
                        else
                        {
                            o_p += a;

                        }
                    }
                    push(item);
                }
                else if (item == '^')
                {

                    push(item);


                }
                else if (item == ')')
                {
                    char a;
                    while ((a = pop()) != '(')
                    {
                        o_p += a;
                    }
                }
                count++;

            }
        }



        
    }
  
}
