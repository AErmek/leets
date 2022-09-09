import 'dart:collection';

import 'package:practice/leets/task.dart';

//TODO
class Task1051 extends Task {
  @override
  void execute() {
    final result = heightChecker([1, 1, 4, 2, 1, 3]);
    print(result);
  }

  int heightChecker(List<int> heights) {
    Map<int, int> map = {};
    var result = 0;
    for (var item in heights) {
      map[item] = (map[item] ?? 0) + 1;
    }

    for (var i = 0; i < heights.length; i++) {
      if (map[heights[i]]! >= i) {
        result++;
      }
    }

    return result;
  }
}
