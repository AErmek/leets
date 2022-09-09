import 'dart:math';

import 'package:practice/leets/task.dart';

class Task557 extends Task {
  @override
  void execute() {
    final result = reverseWords("Let's take LeetCode contest");
    print(result);
  }

  String reverseWords(String s) {
    List<int> result = [];
    int k = 0;
    int i = 0;
    for (var item in s.runes) {
      if (item == 32) {
        var length = i + k;
        for (var j = length - 1; j >= i; j--) {
          result.add(s.codeUnitAt(j));
        }
        result.add(32);
        k = 0;
        i = length + 1;
      } else {
        k++;
      }
    }

    for (var j = i + k - 1; j >= i; j--) {
      result.add(s.codeUnitAt(j));
    }

    return String.fromCharCodes(result);
  }
}
