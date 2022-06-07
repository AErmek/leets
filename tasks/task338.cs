
using System;
using System.Text;

class task338 : itask
{
    private int[] CountBits(int n)
    {
        var res = new int[n + 1];
        res[0] = 0;

        var count = 0;
        var val = "0";
        for (int i = 1; i <= n; i++)
        {
            val = AddBinaryBit(val, ref count);
            res[i] = count;
        }

        return res;
    }

    public string AddBinaryBit(string a, ref int count)
    {
        var hasRemainder = false;
        var builder = new StringBuilder();
        count = 0;
    
        for (int i = 0; i < a.Length; i++)
        {
            bool left = i < a.Length ? (a[a.Length - 1 - i] == '1') : false;
            bool right = i == 0 ? true : false;

            bool val = (left ^ right) ^ hasRemainder;
            hasRemainder = left && right || ((left || right) && hasRemainder);

            builder.Insert(0, val ? '1' : '0');
            if(val)
                count++;
        }
        if (hasRemainder)
        {
            builder.Insert(0, "1");
            count++;
        }

        return builder.ToString();
    }

    public void execute()
    {
        var res = CountBits(8);

        Console.WriteLine(string.Join(" ", res));
    }
}