using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace postfix_simplificatoin
{
    class createstackclass
    {
        int top=-1;
        string[] Array;

        public createstackclass(int capacity)
        {
            Array = new string[capacity];
        }

        public void push(string item)
        {
            if (top== Array.Length)
                Console.WriteLine("Sorry! Stack is full");
            else
                Array[++top] = item;
        }

        public string pop()
        {
            return Array[top--];
        }

        public string evaluationofpostfix(ref string p)
        {

            int c = 0;

            while ( c!= p.Length)
            {
                char item = p[c++];

                if (item != '+' && item  != '^' && item  != '%' && item  != '/' && item  != '-' && item  != '*')
                    push(item .ToString());
                else
                {
                    int a = int.Parse(pop());
                    int b = int.Parse(pop());
                    switch (item)
                    {
                        case '+':
                            push((b + a).ToString());
                            break;
                        case '-':
                            push((b - a).ToString());
                            break;
                        case '*':
                            push((b * a).ToString());
                            break;
                        case '/':
                            push((b / a).ToString());
                            break;
                        case '%':
                            push((b % a).ToString());
                            break;
                        case '^':
                            push((b ^ a).ToString());
                            break;
                    }
                }
            }
            return peak();
        }

        public string peak()
        {
            return Array[top];
        }

    }
}
