using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoProject
{
    internal class EmployInnerExample
    {

        public static void PrintEmployInfo(params Employ[] employs)
        {
            Console.WriteLine("Employ Information ");
            foreach (Employ employ in employs)
            {
                Console.WriteLine("Employ No " + employ.Empno + " Employ Name " + employ.Name + " Employ Basic "
                    + employ.Basic + " Tax is  " + Tax(employ.Basic));
            }

            double TotalSalary()
            {
                double total = 0;
                foreach (Employ employ in employs)
                {
                    total += employ.Basic;
                }
                return total;

            }

            double Tax(double basic)
            {
                return basic * 0.10;
            }
            Console.WriteLine("---------------------------------------");
            Console.WriteLine($"Total Salary {TotalSalary()}");
        }
        static void Main()
        {
            Employ[] arrEmploy = new Employ[]
            {
                new Employ{Empno=1,Name="Aman",Basic=52334.44},
                new Employ{Empno=2,Name="Simha",Basic=88223},
                new Employ{Empno=3,Name="Yash",Basic=92234}
            };

            PrintEmployInfo (arrEmploy);
        }
    }
}
