using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Practice1
{
    internal class practice1
    {
        static void Main(string[] args)
        {
            Console.Write("Enter a string: ");
            string s = Console.ReadLine();

            int[] freq = new int[26];


            for (int i = 0; i < s.Length; i++)
            {
                freq[s[i] - 'a']++;
            }

            char result = '$';


            for (int i = 0; i < s.Length; i++)
            {
                if (freq[s[i] - 'a'] == 1)
                {
                    result = s[i];
                    break;
                }
            }

            Console.WriteLine("First non-repeating character: " + result);
            Console.ReadLine();
        }
    }
}
