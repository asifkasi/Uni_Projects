using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace postfix_simplificatoin
{
    class createstackclass
    {
        static int top = -1;
        static string[] Array;

        public createstackclass(int capacity)
        {
            Array = new string[capacity];
        }
         static void push(string item)
        {
            if (top== Array.Length)
                Console.WriteLine("Sorry! Stack is full");
            else
                Array[++top] = item;
        }
        public static string pop()
        {
             return Array[top--];
        }
        public static string peak()
        {
            return Array[top];
        }
        public string evaluationofpostfix(ref string p)
        {
            p += ')';
            int c = 0;
            while (p[c] != ')')
            {
                if (p[c] != '+' && p[c] != '^' && p[c] != '%' && p[c] != '/' && p[c] != '-' && p[c] != '*')
                    push(p[c].ToString());
                else
                {
                    int a = int.Parse(pop());
                    int b = int.Parse(pop());
                    switch (p[c])
                    {
                        case '+':
                            push((a + b).ToString());
                            break;
                        case '-':
                            push((a - b).ToString());
                            break;
                        case '*':
                            push((a * b).ToString());
                            break;
                        case '/':
                            push((a / b).ToString());
                            break;
                        case '%':
                            push((a % b).ToString());
                            break;
                        case '^':
                            push((a ^ b).ToString());
                            break;
                    }
                }
                c++;
            }
            return peak();
        }

        public string interchange(string ex)
        {
            string a = "";
            for (int i = ex.Length - 1; i >= 0; i--)
            {
                a += ex[i];
            }

            return a;
        }

    }
}
