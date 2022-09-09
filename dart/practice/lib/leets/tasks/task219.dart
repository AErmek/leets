import 'package:practice/leets/task.dart';

class Task219 extends Task {
  @override
  void execute() {
    final result = containsNearbyDuplicate([1, 2, 3, 1, 2, 1, 2, 3], 2);
    print(result);
  }

  //TODO too slow
  // bool containsNearbyDuplicate(List<int> nums, int k) {
  //   for (var i = 0; i < nums.length - 1; i++) {
  //     for (var j = i + 1; j < nums.length; j++) {
  //       if ((i - j).abs() > k) {
  //         break;
  //       }
  //       if (nums[i] == nums[j]) {
  //         return true;
  //       }
  //     }
  //   }
  //   return false;
  // }

  bool containsNearbyDuplicate(List<int> nums, int k) {
    Map<int, int> map = {};
    var i = 0;
    for (var item in nums) {
      if (map.containsKey(item)) {
        if (((map[item] ?? 0) - i).abs() <= k) {
          return true;
        }
      }

      map[item] = i;
      i++;
    }
    return false;
  }
}
