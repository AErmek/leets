
using System;
using System.Text.RegularExpressions;

class task125 : itask
{

    private bool IsPalindrome(string s)
    {
        s = Regex.Replace(s, @"[^a-zA-Z0-9]", "");
        s = s.ToLowerInvariant();

        for (int i = 0; i < s.Length / 2; i++)
        {
            if (!s[i].Equals(s[s.Length - 1 - i]))
            {
                return false;
            }
        }

        return true;
    }

    public void execute()
    {
        var s = "0P";
        var result = IsPalindrome(s);

        Console.WriteLine(result);
    }
}