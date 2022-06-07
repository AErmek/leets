
using System;
using System.Collections.Generic;
using System.Text;

class task228 : itask
{


    private IList<string> SummaryRanges(int[] nums)
    {
        var resList = new List<string>();

        if (nums.Length == 0)
            return resList;

        int? lastValue = null;

        for (int i = 0; i <= nums.Length; i++)
        {
            if (!lastValue.HasValue)
            {
                lastValue = nums[i];
            }
            else if (i == nums.Length || nums[i] - nums[i - 1] != 1)
            {
                if (lastValue.Value == nums[i - 1])
                {
                    resList.Add(lastValue.ToString());
                }
                else
                {
                    resList.Add($"{lastValue}->{nums[i - 1]}");
                }
                if (i != nums.Length)
                    lastValue = nums[i];
            }
        }

        return resList;
    }


    public void execute()
    {
        var result = SummaryRanges(new int[] { 0, 2, 3, 4, 6, 8, 9 });
        Console.WriteLine("=============");
        foreach (var item in result)
        {
            Console.WriteLine(item);
        }
    }
}