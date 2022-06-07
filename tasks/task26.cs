
using System;

class task26 : itask
{
    public void execute()
    {
        var array = new[]{0,0,1,1,1,2,2,3,3,4};
        var count = RemoveDuplicates(array);

        Console.WriteLine($"{count}");
        for (int i = 0; i < array.Length; i++)
        {
            Console.Write($"{array[i]} ");
        }
    }

    public int RemoveDuplicates(int[] nums) {
        var lastIndex = 0;
        var counter = 1;
        for (int i = 1; i < nums.Length; i++)
        {
            if(nums[i] != nums[lastIndex]){
                lastIndex++;
                nums[lastIndex] = nums[i];
                counter++;
            }
        }

        return counter;
    }
}