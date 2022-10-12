import 'package:practice/leets/task.dart';

//TODO Bad solution
class Task976 extends Task {
  @override
  void execute() {
    final result = largestPerimeter([1, 1, 2, 4]);
    print(result);
  }

  int largestPerimeter(List<int> nums) {
    nums.sort((a, b) => b.compareTo(a));

    for (var i = 0; i < nums.length - 2; i++) {
      var part = nums.skip(i).take(3).toList();
      var index = isTriangle(part);

      if (index == null) {
        return part.reduce((value, element) => value + element);
      }

      nums[index] = nums[i];
    }

    return 0;
  }

  int? isTriangle(List<int> nums) {
    if (nums[0] + nums[1] <= nums[2]) {
      return 2;
    }
    if (nums[0] + nums[2] <= nums[1]) {
      return 1;
    }
    if (nums[1] + nums[2] <= nums[0]) {
      return 0;
    }
    return null;
  }
}
