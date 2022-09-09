
using System;

class task171 : itask
{
    public void execute()
    {
        var result = TitleToNumber("AB");
        Console.WriteLine(result.ToString());
    }


    private int TitleToNumber(string columnTitle)
    {
        var result = (int)columnTitle[columnTitle.Length - 1] - 64;
        int pos = 1;
        for (int j = columnTitle.Length-2; j >=0 ; j--)
        {
            var letterIndex = (int)columnTitle[j] - 64;
            int actualNum = (pos * letterIndex * 26);
            result += actualNum;
            pos *=26;
        };

        return result;
    }

    private int TitleToNumber1(string columnTitle)
    {
        var result = 0;
        for (int j = columnTitle.Length - 1; j >= 0; j--)
        {
            var letterIndex = (int)columnTitle[j] - 64;
            if (j == columnTitle.Length - 1)
            {
                result += letterIndex;
            }
            else
            {
                result += (int)Math.Pow(26, columnTitle.Length - 1 - j) * letterIndex;
            }
        }
        return result;
    }
}