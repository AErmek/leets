import 'package:practice/leets/task.dart';

class Task75 extends Task {
  @override
  void execute() {
    var array = [2, 0, 2, 1, 1, 0];
    print(array);
    sortColors(array);
    print(array);
  }

  void sortColors(List<int> nums) {
    var zeroCount = 0, oneCount = 0;

    for (var i = 0; i < nums.length; i++) {
      if (nums[i] == 1) {
        oneCount++;
        continue;
      }

      if (nums[i] == 0) {
        zeroCount++;
      }

      nums[i] = 1;
    }

    for (var i = 0; i < zeroCount; i++) {
      nums[i] = 0;
    }

    for (var i = zeroCount + oneCount; i < nums.length; i++) {
      nums[i] = 2;
    }
  }

  // void sortColors(List<int> nums) {
  //   var leftIndex = 0;
  //   var rightIndex = nums.length - 1;

  //   for (var i = 0; i < nums.length;) {
  //     print(nums);
  //     if (nums[i] == 0) {
  //       if (leftIndex < i) {
  //         var temp = nums[leftIndex];
  //         nums[leftIndex] = 0;
  //         nums[i] = temp;

  //         leftIndex++;
  //         if (temp == 2) {
  //           continue;
  //         }
  //       } else {
  //         leftIndex++;
  //       }
  //     } else if (nums[i] == 2) {
  //       if (rightIndex > i) {
  //         var temp = nums[rightIndex];
  //         nums[rightIndex] = 2;
  //         nums[i] = temp;
  //         rightIndex--;
  //         if (temp == 0) {
  //           continue;
  //         }
  //       } else {
  //         rightIndex--;
  //       }
  //     }

  //     i++;
  //   }
  // }
}
