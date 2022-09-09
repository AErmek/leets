import 'dart:math';

import 'package:practice/leets/task.dart';

class Task485 extends Task {
  @override
  void execute() {
    final result =
        findMaxConsecutiveOnes([1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1]);
    print(result);
  }

  // int findMaxConsecutiveOnes(List<int> nums) {
  //   var result = 0;
  //   var tempMax = 0;
  //   nums.add(0);

  //   for (var item in nums) {
  //     if (item == 0) {
  //       result = max(result, tempMax);
  //       tempMax = 0;
  //     } else {
  //       tempMax++;
  //     }
  //   }

  //   return result;
  // }

  int findMaxConsecutiveOnes(List<int> nums) {
    var result = 0;
    var tempMax = 0;

    for (var item in nums) {
      if (item == 0) {
        result = max(result, tempMax);
        tempMax = 0;
      } else {
        tempMax++;
      }
    }

    return max(result, tempMax);
  }
}
