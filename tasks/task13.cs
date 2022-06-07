
using System;
using System.Collections.Generic;

class task13 : itask
{
    private Dictionary<char, int> dict = new Dictionary<char, int>() {
        { 'I', 1 },
        { 'V', 5 },
        { 'X', 10 },
        { 'L', 50 },
        { 'C', 100 },
        { 'D', 500 },
        { 'M', 1000 },
        };

    private int RomanToInt2(string s)
    {
        var res = 0;
        var hasLast = true;
        for (int i = 0; i < s.Length - 1; i++)
        {
            var letterVal = dict[s[i]];
            var nextVal = dict[s[i + 1]];
            var check = nextVal / letterVal;
            if (check == 5 || check == 10)
            {
                if (i + 1 == s.Length - 1)
                {
                    hasLast = false;
                }
                res += nextVal - letterVal;
                i++;
            }
            else
            {
                res += letterVal;
            }
        }
        if (hasLast)
            res += dict[s[s.Length - 1]];
        return res;
    }

    public void execute()
    {
        var result = RomanToInt2("MCMXCIV");
        Console.WriteLine(result.ToString());
    }
}