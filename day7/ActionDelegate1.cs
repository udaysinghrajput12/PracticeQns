using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoProject
{
    internal class ActionDelegate1
    {
        static void PosNeg(int x)
        {
            if (x >= 0)
            {
                Console.WriteLine("Positive Number...");
            }
            else
            {
                Console.WriteLine("Negative Number...");
            }
        }
        static void EvenOdd(int x)
        {
            if (x % 2 == 0)
            {
                Console.WriteLine("Even Number...");
            }
            else
            {
                Console.WriteLine("Odd Number...");
            }
        }

        static void Fact(int x)
        {
            int f = 1;
            for (int i = 1; i <= x; i++)
            {
                f = f * i;
            }
            Console.WriteLine("Factorial Value is   " + f);
        }

        static void Main()
        {
            Action<int> result = Fact;
            result += EvenOdd;
            result += PosNeg;

            result(8);
        }
    }
}
