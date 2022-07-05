using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace QuizSystem
{
    class randomnumbergenerate
    {
        Random r = new Random();
        int[] array = new int[10];
        int pointer = 0;

        public int generate(int start, int end)
        {
            int no = -1;
            bool flg = true;
            while (flg)
            {
                 no = r.Next(start, end);
                if (Contains(no) == false)
                {
                    array[pointer] = no;
                    pointer++;
                    flg = false;
                    break;

                }
            }

            return no;
        }
        public int generateop(int start, int end)
        {
            int no = -1;
            bool flg = true;
            while (flg && pointer<2)
            {
                no = r.Next(start, end);
                if (Contains(no) == false)
                {
                    array[pointer] = no;
                    pointer++;
                    flg = false;
                    break;
                    

                }
            }

            if (flg == false)
            {
                return no;
            }
            else
            {
                if (Contains(0) == false)
                {
                    array[pointer] = 0;
                    pointer++;
                    return 0;
                }
                else
                if (Contains(1) == false)
                {
                    array[pointer] = 1;
                    pointer++;
                    return 1;
                }
                else
                if (Contains(2) == false)
                {
                    array[pointer] = 2;
                    pointer++;
                    return 2;
                }
                else
                    if (Contains(3) == false)
                    {
                        array[pointer] = 3;
                        pointer++;
                        return 3;
                    }
                    else
                    {
                        return -1;
                    }
            }
        }


        public bool Contains(int value)
        {
            for (int i = 0; i < pointer; i++)
            {
                if (array[i] == value) return true;
            }
            return false;
        }

    }
}
