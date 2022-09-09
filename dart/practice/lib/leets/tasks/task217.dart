import 'package:practice/leets/task.dart';

class Task217 extends Task {
  @override
  void execute() {
    final result = containsDuplicate([1, 2, 3, 4, 1]);
    print(result);
  }

  bool containsDuplicate(List<int> nums) {
    Set<int> set = {};
    for (var item in nums) {
      if (set.contains(item)) {
        return true;
      }

      set.add(item);
    }
    return false;
  }
}
