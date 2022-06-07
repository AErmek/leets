
using System;
using System.Collections.Generic;
using System.Linq;

class task229 : itask
{
    public IList<int> MajorityElement(int[] nums)
    {
        var candidates = new List<int?>() { null };
        // int? candidate = null;
        // int? secondCandidate = null;
        int count = 0;
        int half = nums.Length *2 / 3;
        for (int i = 0; i < (half >= 2 ? half : nums.Length); i++)
        {
            if (count == 0)
            {
                //secondCandidate = candidate;
                candidates[0] = nums[i];
            }
            count += (nums[i] == candidates[0]) ? 1 : -1;
        }
        if (half >= 2)
        {
            count = 0;
            candidates.Add(null);
            for (int i = half; i < nums.Length; i++)
            {
                if(nums[i] == candidates[0])
                    break;
                if (count == 0)
                {
                    //secondCandidate = candidate;
                    candidates[1] = nums[i];
                }
                count += (nums[i] == candidates[1]) ? 1 : -1;
            }
        }


        return candidates.Select(x => x.Value).ToList();
    }

    public void execute()
    {
        var result = MajorityElement(new int[] {2,2,1,1,3,5,2,2,1,1});

        Console.WriteLine(string.Join(',', result));
    }
}