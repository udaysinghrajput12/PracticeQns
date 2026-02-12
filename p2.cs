using System;

class Program
{
    static void Main(string[] args)
    {
        // Prompt user for first number
        Console.WriteLine("Enter the first number:");
        int num1 = Convert.ToInt32(Console.ReadLine());

        // Prompt user for second number
        Console.WriteLine("Enter the second number:");
        int num2 = Convert.ToInt32(Console.ReadLine());

        // Perform addition
        int sum = num1 + num2;

        // Display result
        Console.WriteLine("The sum is: " + sum);
    }
}