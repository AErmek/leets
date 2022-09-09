import 'package:practice/leets/task.dart';

//TODO implement
class Task645 extends Task {
  @override
  void execute() {
    final result = findErrorNums(
      [3, 2, 1, 7, 4, 5, 6, 10, 9, 8],
    );
    print(result);
  }

  List<int> findErrorNums(List<int> nums) {
    //int emptyIndex = -1;
    for (var i = 0; i < nums.length; i++) {
      var numIndex = nums[i] - 1;
      print('numIndex $numIndex');
      if (numIndex == i) {
        continue;
      }

      nums[i] = 0;
      //emptyIndex = i;
      while (true) {
        var nextNumIndex = nums[numIndex] - 1;

        print('nextNumIndex $nextNumIndex');
        if (numIndex == nextNumIndex) {
          break;
        }

        nums[numIndex] = numIndex + 1;
        numIndex = nextNumIndex;
      }
    }

    //print(sum);

    return nums;
  }
}
