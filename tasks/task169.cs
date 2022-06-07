
using System;

public class task169 : itask
{
    public void execute()
    {
        var result = MajorityElement(new int[]{2,2,2,1,3,2,1,2,1,1});
        Console.WriteLine(result.ToString());
    }

     private int MajorityElement(int[] nums) {
        int count = 0;
        int? candidate = null;

        foreach (int num in nums) {
            if (count == 0) {
                candidate = num;
            }
            count += (num == candidate) ? 1 : -1;
        }

        return candidate.Value;
    }
}