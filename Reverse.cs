using System;

class Program
{
    static void Main()
    {
        Console.WriteLine("Enter a sentence:");
        string input = Console.ReadLine();

        // Split sentence into words
        string[] words = input.Split(' ');

        for (int i = 0; i < words.Length; i++)
        {
            if (i % 2 != 0)  // Alternate words (odd index)
            {
                char[] arr = words[i].ToCharArray();
                Array.Reverse(arr);
                words[i] = new string(arr);
            }
        }

        // Join words back into sentence
        string result = string.Join(" ", words);
        Console.WriteLine(result);
    }
}
