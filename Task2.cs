using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Practice1
{
    internal class program2
    {
        static void Main(string[] args)
        {
            Console.Write("Enter a sentence: ");
            string s = Console.ReadLine();

            string cleaned = "";

            for (int i = 0; i < s.Length; i++)
            {
                if (char.IsLetterOrDigit(s[i]))
                {
                    cleaned += char.ToLower(s[i]);
                }
            }

            int left = 0;
            int right = cleaned.Length - 1;
            bool isPalindrome = true;

            while (left < right)
            {
                if (cleaned[left] != cleaned[right])
                {
                    isPalindrome = false;
                    break;
                }
                left++;
                right--;
            }

            Console.WriteLine("Is Palindrome: " + isPalindrome);
            Console.ReadLine();
        }
    }
}
