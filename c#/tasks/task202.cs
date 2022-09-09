
using System;
using System.Collections.Generic;

class task202 : itask
{
    private bool IsHappy(int n)
    {
        var set = new HashSet<int>();
        while (!set.Contains(n))
        {
            set.Add(n);
            var textN = n.ToString();

            n = 0;

            for (int i = 0; i < textN.Length; i++)
            {
                var val = (int)textN[i] - 48;
                n += val * val;
            }

            Console.WriteLine(n);

            if (n == 1)
                return true;
        }
        return false;
    }

    public void execute()
    {
        var result = IsHappy(19);

        Console.WriteLine(result);
    }
}