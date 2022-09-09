import 'package:practice/leets/task.dart';

class Task862 extends Task {
  @override
  void execute() {
    final result = calPoints(["5", "-2", "4", "C", "D", "9", "+", "+"]);
    print(result);
  }

  int calPoints(List<String> ops) {
    var result = 0;
    final list = [];

    for (var item in ops) {
      bool toRemove = false;
      int temp;

      if (item == '+') {
        temp = list.last + list[list.length - 2];
      } else if (item == 'D') {
        temp = list.last * 2;
      } else if (item == 'C') {
        temp = -list.last;
        toRemove = true;
      } else {
        temp = int.parse(item);
      }

      if (toRemove) {
        list.removeLast();
      } else {
        list.add(temp);
      }

      result += temp;
    }

    print(list);
    return result;
  }
}
