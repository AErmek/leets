import 'dart:math';

import 'package:practice/leets/task.dart';

class Task674 extends Task {
  @override
  void execute() {
    final result = findLengthOfLCIS([1, 2, 0, 1, 2, 3, 4, 5]);
    print(result);
  }

  int findLengthOfLCIS(List<int> nums) {
    var maxLength = 0;
    var currentCount = 1;
    for (var i = 1; i < nums.length; i++) {
      if (nums[i] > nums[i - 1]) {
        currentCount++;
      } else {
        maxLength = max(maxLength, currentCount);
        currentCount = 1;
      }
    }
    return max(maxLength, currentCount);
  }
}
