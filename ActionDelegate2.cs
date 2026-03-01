using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;

namespace DemoProject
{
    internal class ActionDelegate2
    {
        public static void Greeting(string s)
        {
            Console.WriteLine($"Good Morning...{s}");
        }

        public static void Testing(string s)
        {
            Console.WriteLine($"Tomorrow NUnit Testing Starts if No Exam {s}");
        }

        public static void Exam(string s)
        {
            Console.WriteLine($"Tomorrow May Be Exam {s}");
        }

        static void Main()
        {
            Action<string> obj = Testing;
            obj += Exam;
            obj+= Greeting;
            obj("Aman");
        }
    }
}
