import 'dart:math';

import 'package:practice/leets/task.dart';

class Task1578 extends Task {
  @override
  void execute() {
    final result = minCost("aabaa", [1, 2, 3, 4, 1]);
    print(result);
  }

  int minCost(String colors, List<int> neededTime) {
    var n = colors.length;
    var result = 0;
    for (int i = 0; i < n - 1; i++) {
      if (colors[i] == colors[i + 1]) {
        if (neededTime[i] > neededTime[i + 1]) {
          result += neededTime[i + 1];
          neededTime[i + 1] = neededTime[i];
        } else {
          result += neededTime[i];
        }
      }
    }
    return result;
  }
}
