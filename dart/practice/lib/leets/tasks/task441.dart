import 'package:practice/leets/task.dart';

class Task441 extends Task {
  @override
  void execute() {
    final result = arrangeCoins(6);
    print(result);
  }

  int arrangeCoins(int n) {
    var total = 0;

    for (var i = 1; i <= n; i++) {
      total += i;
      if (total > n) {
        return i - 1;
      }
      if (total == n) {
        return i;
      }
    }

    return -1;
  }

  // int arrangeCoins(int n) {
  //   var total = 0;
  //   var index = 0;

  //   while (true) {
  //     index++;
  //     total += index;
  //     if (total > n) {
  //       return index - 1;
  //     }
  //     if (total == n) {
  //       return index;
  //     }
  //   }
  // }
}
