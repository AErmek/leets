import 'package:practice/leets/task.dart';

class Task349 extends Task {
  @override
  void execute() {
    final result = intersection([4, 9, 5], [9, 4, 9, 8, 4]);
    print(result);
  }

  List<int> intersection(List<int> nums1, List<int> nums2) {
    bool firstIsSet = nums1.length >= nums2.length;
    Set<int> set = firstIsSet ? nums1.toSet() : nums2.toSet();
    Set<int> result = {};

    for (var item in firstIsSet ? nums2 : nums1) {
      if (set.contains(item)) {
        result.add(item);
      }
    }

    return result.toList();
  }

  // List<int> intersection(List<int> nums1, List<int> nums2) {
  //   Set<int> set = nums1.toSet();
  //   Set<int> result = {};

  //   for (var i = 0; i < nums2.length; i++) {
  //     if (set.contains(nums2[i])) {
  //       result.add(nums2[i]);
  //     }
  //   }

  //   return result.toList();
  // }

  // List<int> intersection(List<int> nums1, List<int> nums2) {
  //   return nums1.toSet().intersection(nums2.toSet()).toList();
  // }
}
