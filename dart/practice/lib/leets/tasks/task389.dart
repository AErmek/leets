import 'package:practice/leets/task.dart';

class Task389 extends Task {
  @override
  void execute() {
    final result = findTheDifference('eabdc', 'aebcde');
    print(result);
  }

  String findTheDifference(String s, String t) {
    int sum = 0;
    final sRune = s.runes.iterator..moveNext();
    final tRune = t.runes.iterator..moveNext();
    while (sRune.current != -1) {
      sum += tRune.current;
      sum -= sRune.current;

      sRune.moveNext();
      tRune.moveNext();
    }
    sum += tRune.current;

    return String.fromCharCode(sum);
  }

  // String findTheDifference(String s, String t) {
  //   Map<String, int> map = {};
  //   for (var i = 0; i < s.length; i++) {
  //     toAdd(map, s[i]);
  //     toSubtract(map, t[i]);
  //   }
  //   toSubtract(map, t[t.length - 1]);

  //   return map.keys.first;
  // }

  // void toAdd(Map<String, int> map, String key) {
  //   final val = map[key] ?? 0;
  //   if (val == -1) {
  //     map.remove(key);
  //   } else {
  //     map[key] = val + 1;
  //   }
  // }

  // void toSubtract(Map<String, int> map, String key) {
  //   final val = map[key] ?? 0;
  //   if (val == 1) {
  //     map.remove(key);
  //   } else {
  //     map[key] = val - 1;
  //   }
  // }
}
