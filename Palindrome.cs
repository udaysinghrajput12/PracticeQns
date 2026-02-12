using System;

class Program
{
    static void Main()
    {
        Console.WriteLine("Enter a word:");
        string word = Console.ReadLine();

        string reversed = "";

        for (int i = word.Length - 1; i >= 0; i--)
        {
            reversed += word[i];
        }

        if (word == reversed)
            Console.WriteLine("Palindrome");
        else
            Console.WriteLine("Not a Palindrome");
    }
}
