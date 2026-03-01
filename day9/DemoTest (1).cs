using NUnit.Framework;
using DemoProject;

namespace Tests
{
    [TestFixture]
    public class Tests
    {
        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public void TestSum()
        {
            Demo demo = new Demo();
            Assert.AreEqual(5, demo.Sum(2, 3));
        }

        [Test]
        public void TestEvenOdd()
        {
            Demo demo = new Demo();
            Assert.True(demo.EvenOdd(10));
            Assert.False(demo.EvenOdd(9));
        }

        [Test]
        public void TestMinArray()
        {
            int[] a = { 12, -1, 2, 3, 5, 21 };
            Demo demo = new Demo();
            Assert.AreEqual(-1, demo.MinArray(a));
        }

        [Test]
        public void TestMax3()
        {
            Demo demo = new Demo();
            Assert.AreEqual(3, demo.Max3(3, 2, 1));
            Assert.AreEqual(3, demo.Max3(2, 3, 1));
            Assert.AreEqual(3, demo.Max3(1, 2, 3));
        }

        [Test]
        public void TestSub()
        {
            Demo demo = new Demo();
            Assert.AreEqual(3, demo.Sub(5, 2));
        }

        [Test]
        public void TestMult()
        {
            Demo demo = new Demo();
            Assert.AreEqual(10, demo.Mult(2, 5));
        }

        [Test]
        public void TestSayHello()
        {
            Demo demo = new Demo();
            Assert.AreEqual("Welcome to Nunit Testing...",demo.SayHello());
        }
    }
}