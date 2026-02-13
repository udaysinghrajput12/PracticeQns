using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Day4
{
    internal class program3
    {
        static void Main(string[] args)
        {
            Console.Write("Enter K value: ");
            int k = int.Parse(Console.ReadLine());

            Console.Write("Enter string: ");
            string str = Console.ReadLine();

            Stack<(char ch, int count)> stack = new Stack<(char, int)>();

            foreach (char c in str)
            {
                if (stack.Count > 0 && stack.Peek().ch == c)
                {
                    var top = stack.Pop();
                    top.count++;

                    if (top.count != k)
                        stack.Push(top);
                }
                else
                {
                    stack.Push((c, 1));
                }
            }

            
            string result = "";

            foreach (var item in stack.Reverse())
            {
                result += new string(item.ch, item.count);
            }

            Console.WriteLine("Reduced string: " + result);
            Console.ReadLine();
        }
    }
}
