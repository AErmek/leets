
using System;
using System.Text;

class task67 : itask
{
    public string AddBinary(string a, string b)
    {
        var hasRemainder = false;
        var builder = new StringBuilder();
        var longest = a.Length > b.Length ? a.Length : b.Length;
        for (int i = 0; i < longest; i++)
        {
            bool left = i < a.Length ? (a[a.Length-1 - i] == '1') : false;
            bool right = i < b.Length ? (b[b.Length-1 - i] == '1') : false;
            
            bool val = (left ^ right) ^ hasRemainder; 
            hasRemainder = left && right || ((left || right) && hasRemainder);

            builder.Insert(0,val ? '1' : '0');
        }
        if(hasRemainder){
            builder.Insert(0,"1");
        }

        return builder.ToString();
    }

    public void execute()
    {
        var result = AddBinary("11","1");
        Console.WriteLine(result);
    }
}