using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;

namespace DemoProject.Tests
{
    [TestFixture]
    internal class StudentTest
    {
        [Test]
        public void TestConstructors()
        {
            Student student = new Student();
            Assert.NotNull(student);

            Student s1 = new Student(1, "Kishore", 9.9);
            Assert.NotNull(s1);
            Assert.AreEqual(1, s1.sno);
            Assert.AreEqual("Kishore", s1.name);
            Assert.AreEqual(9.9,s1.cgp);
        }
    }
}
