import 'package:practice/leets/task.dart';

class Task747 extends Task {
  @override
  void execute() {
    final result = dominantIndex([6, 3, 1, 0]);
    print(result);
  }

  int dominantIndex(List<int> nums) {
    bool isFirstBigger = nums[0] > nums[1];
    int largestIndex = isFirstBigger ? 0 : 1;
    int secondLargeIndex = isFirstBigger ? 1 : 0;
    for (var i = 2; i < nums.length; i++) {
      if (nums[largestIndex] < nums[i]) {
        secondLargeIndex = largestIndex;
        largestIndex = i;
      } else if (nums[secondLargeIndex] < nums[i]) {
        secondLargeIndex = i;
      }
    }

    return nums[largestIndex] >= (nums[secondLargeIndex] * 2)
        ? largestIndex
        : -1;
  }
}
