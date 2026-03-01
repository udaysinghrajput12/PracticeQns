using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoProject
{
    public class Student
    {
        public int sno;
        public string name;
        public double cgp;

        public Student() { }

        public Student(int sno, string name, double cgp)
        {
            this.sno = sno;
            this.name = name;
            this.cgp = cgp;
        }

        public override string ToString()
        {
            return "Sno " + sno + " Name " + name + " Cgp " + cgp;
        }
    }
}
