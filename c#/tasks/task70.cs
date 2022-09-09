
using System;

class task70 : itask
{
    private int ClimbStairs(int n)
    {
        var result = n % 2 == 0 ? 2 : 1;

        var power = 2;
        while (n - power > 0)
        {
            var positions = n - power + power / 2;
            var combinations = 1;
            for (int i = 0; i < power / 2; i++)
            {
                combinations *= positions - i;
            }
            result += combinations / calculateFact(power/2);
            power += 2;
        }
        return result;
    }

    private int calculateFact(int n){
        var res = 1;
        for (int i = n; i > 2; i--)
        {
            res *=i;   
        }
        return res;
    }

    public void execute()
    {
        var result = ClimbStairs(32);
        Console.WriteLine(result);
    }
}