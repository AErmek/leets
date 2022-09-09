import 'dart:math';

import 'package:practice/leets/task.dart';

class Task541 extends Task {
  @override
  void execute() {
    final result = reverseStr('abcdefg', 2);
    print(result);
  }

  String reverseStr(String s, int k) {
    List<int> result = [];
    bool isReverse = true;
    for (var i = 0; i < s.length; i += k) {
      final localLength = min(i + k, s.length);
      if (isReverse) {
        for (var j = localLength - 1; j >= i; j--) {
          result.add(s.codeUnitAt(j));
        }
      } else {
        for (var j = i; j < localLength; j++) {
          result.add(s.codeUnitAt(j));
        }
      }

      isReverse = !isReverse;
    }

    return String.fromCharCodes(result);
  }
}
