using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;

namespace DemoProject.Tests
{
    [TestFixture]
    internal class EmployTest
    {
        [Test]
        public void TestToString()
        {
            Employ employ = new Employ();
            employ.Empno = 1;
            employ.Name = "Girish";
            employ.Basic = 99422;

            string expected = "Empno 1 Name Girish Basic 99422";
            Assert.AreEqual(expected, employ.ToString());
        }


        [Test]
        public void TestGettersAndSetters()
        {
            Employ employ = new Employ();
            employ.Empno = 1;
            employ.Name = "Prasanna";
            employ.Basic = 83823;

            Assert.AreEqual(1, employ.Empno);
            Assert.AreEqual("Prasanna", employ.Name);
            Assert.AreEqual(83823,employ.Basic);
        }
    }
}
