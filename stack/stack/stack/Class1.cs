using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace stack
{
    class Class1
    {
        char[] stack = new char[100];

        int top = -1;
        
        public void push(char op)
        {

            top++;

            stack[top] = op;
        
        }

        public void pop()
        {
            Console.Clear();
            


                top++;

                for (int i = 0; i <= top; i++)
                {
                    Console.Write(stack[i]);
                }
            

            
        }

        public void Ctrl_Z()
        {
            Console.Clear();
            //top++;
            
            for (int i = 0; i <top; i++)
            {
                Console.Write(stack[i]);
            }
            top--;

        }

        public void Backspace()
        {
            Console.Clear();
            if (top < 0)
            {
                Console.WriteLine("\t Operation failed!! Stack is empty");
            }
            else
            {
                for (int i = 0; i < top; i++)
                {
                    Console.Write(stack[i]);
                }
                top--;
            }
            
        
        }


    }
}
