using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoProject
{
    internal class FunctionDelegateExample2
    {
        public static int Display(int x)
        {
            return x + 100;
        }

        public static int Check(int x)
        {
            if (x % 2 == 0)
            {
                return 1;
            }
            return 0;
        }

        static void Main()
        {
            Func<int, int> res = Display;
            int result = res(10);
            res += Check;
            Console.WriteLine(res(10));
            Console.WriteLine(result);

        }
    }
}
