import 'package:practice/leets/task.dart';

//TODO complete
class Task414 extends Task {
  @override
  void execute() {
    final result = thirdMax([3, 2, 1]);
    print(result);
  }

  int thirdMax(List<int> nums) {
    int? max;
    int? secondMax;
    int? thirdMax;
    for (var i = 0; i < nums.length; i++) {
      if (max == null || nums[i] > max) {
        if (max != null) {
          var tempSecondMax = secondMax;
          secondMax = max;
          if (tempSecondMax != null) {
            thirdMax = thirdMax;
          }
        }
        max = nums[i];
      }
    }

    return thirdMax ?? max ?? 0;
  }

  int? calculateValue(
      {required int? currentValue,
      required int? biggersValue,
      required int indexValue}) {}
}
