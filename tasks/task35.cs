
using System;

public class task35 : itask
{
    public void execute()
    {
        var resultIndex = SearchInsert(new int[] { 1, 3},2);
        Console.WriteLine(resultIndex);
    }

    private int SearchInsert(int[] nums, int target)
    {
        var left = 0;
        var right = nums.Length - 1;
        var last = 0;
        while (left <= right)
        {
            int middle = left + (right - left) / 2;
            Console.WriteLine($"middle {middle}");

            if (nums[middle] == target)
            {
                return middle;
            }

            if (target > nums[middle])
            {
                left = middle + 1;
                last = left;
            }
            else
            {
                right = middle - 1;
                last = middle;
            }

            Console.WriteLine($"middle2 {middle}");
        }

        return last;
    }
}