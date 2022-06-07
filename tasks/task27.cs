
using System;

class task27 : itask
{
    public void execute()
    {
        var array  =new[]{0,1,2,2,3,0,4,2};
        var count = RemoveElement(array,2);

        Console.WriteLine($"{count}");
        for (int i = 0; i < array.Length; i++)
        {
            Console.Write($"{array[i]} ");
        }
    }

    public int RemoveElement(int[] nums, int val) {
        var counter = 0;
        for (int i = 0; i < nums.Length; i++)
        {
            if(nums[i] == val){
                for (int j = i+1; j < nums.Length; j++){
                    if(nums[j]!=val){
                        nums[i] = nums[j];
                        nums[j] = val;

                        counter++;

                        break;
                    }
                }
            }else{
                counter++;
            }
        }

        return counter;
    }
}