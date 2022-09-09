
using System;
using System.Collections.Generic;

class task20 : itask
{
    // private Dictionary<char, char> opens = new Dictionary<char, char>(){
    //     {'(','('},
    //      {'{','{'},
    //       {'[','['},
    // };
    private Dictionary<char, char> closes = new Dictionary<char, char>(){
        {')','('},
         {'}','{'},
          {']','['},
    };

    private bool IsValid(string s)
    {
        var stack = new Stack<char>();
        for (int i = 0; i < s.Length; i++)
        {
            if (closes.ContainsKey(s[i]))
            {
                if (stack.Count == 0)
                {
                    return false;
                }
                if (stack.Pop() != closes[s[i]])
                {
                    return false;
                }
            }
            else
            {
                stack.Push(s[i]);
            }
        }
        return stack.Count == 0;
    }
    public void execute()
    {
        var result = IsValid("");
        Console.WriteLine(result);
    }
}