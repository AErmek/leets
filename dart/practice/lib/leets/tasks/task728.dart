import 'package:practice/leets/task.dart';

class Task728 extends Task {
  @override
  void execute() {
    print(selfDividingNumbers(10, 20));
  }

  List<int> selfDividingNumbers(int left, int right) {
    List<int> result = [];
    outerLoop:
    for (var i = left; i <= right; i++) {
      for (var item in integerDigits(i)) {
        if (item == 0) {
          continue outerLoop;
        }
        if (i % item != 0) {
          continue outerLoop;
        }
      }
      result.add(i);
    }

    return result;
  }

  Iterable<int> integerDigits(int num) sync* {
    while (num > 0) {
      yield num % 10;
      num = num ~/ 10;
    }
  }
}
