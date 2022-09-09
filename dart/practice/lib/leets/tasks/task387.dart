import 'dart:collection';

import 'package:practice/leets/task.dart';

class Task387 extends Task {
  @override
  void execute() {
    final result = firstUniqChar("leetcode");
    print(result);
  }

  // int firstUniqChar(String s) {
  //   final sUnits = s.codeUnits;
  //   Set<int> map = {};

  //   outerLoop:
  //   for (var i = 0; i < sUnits.length; i++) {
  //     if (map.contains(sUnits[i])) {
  //       continue;
  //     }

  //     for (var j = i + 1; j < sUnits.length; j++) {
  //       if (sUnits[i] == sUnits[j]) {
  //         map.add(sUnits[i]);
  //         continue outerLoop;
  //       }
  //     }

  //     return i;
  //   }

  //   return -1;
  // }

  int firstUniqChar(String s) {
    Set<String> map = {};

    outerLoop:
    for (var i = 0; i < s.length; i++) {
      if (map.contains(s[i])) {
        continue;
      }

      for (var j = i + 1; j < s.length; j++) {
        if (s[i] == s[j]) {
          map.add(s[i]);
          continue outerLoop;
        }
      }

      return i;
    }

    return -1;
  }

  // int firstUniqChar(String s) {
  //   Map<int, int> map = {};
  //   Queue<int> queue = {};

  //   for (var item in s.runes) {
  //     if (map.containsKey(item)) {
  //       continue;
  //     }

  //     for (var i = 0; i < arr.length; i++) {}
  //   }

  //   return -1;
  // }
}
