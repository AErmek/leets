
using System;

class task392 : itask
{
    private bool IsSubsequence(string s, string t)
    {
        if (string.IsNullOrEmpty(s))
            return true;

        var sIndex = 0;
        for (int i = 0; i < t.Length && sIndex < s.Length; i++)
        {   
            if(t.Length - i < s.Length - sIndex){
                return false;
            }

            if(t[i] == s[sIndex]){
                sIndex++;
            }
        }

        return sIndex == s.Length;
    }
    public void execute()
    {
        var result = IsSubsequence("b", "abc");

        Console.WriteLine(result);
    }
}