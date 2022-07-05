using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace stack
{
    class Program
    {
        static void Main(string[] args)
        { char i;
            Class1 abc = new Class1();

            ConsoleKeyInfo input = Console.ReadKey();
            
            while (input.Key!=ConsoleKey.Enter)
            {
                if (!char.IsControl(input.KeyChar))
                {
                 i   = input.KeyChar;
                 
                    abc.push(i);
                }
                else if (input.Modifiers==ConsoleModifiers.Control && input.Key==ConsoleKey.Z)
                {
                    abc.Ctrl_Z();
                    
                }
                else if (input.Modifiers==ConsoleModifiers.Control && input.Key==ConsoleKey.Y)
                {
                    abc.pop();
                }
                else if (input.Key == ConsoleKey.Backspace)
                {
                    abc.Backspace();
                }
                input = Console.ReadKey();

            }
            Console.Clear();
            Console.WriteLine("Emd program");
            Console.ReadLine();
        }
    }
}
