import 'package:practice/leets/task.dart';

class Task242 extends Task {
  @override
  void execute() {
    final result = isAnagram("rat", "car");
    print(result);
  }

  bool isAnagram(String s, String t) {
    Map<int, int> map = {};
    for (var item in s.runes) {
      map[item] = (map[item] ?? 0) + 1;
    }

    for (var item in t.runes) {
      if (map.containsKey(item)) {
        var count = map[item];
        if (count == null || count == 1) {
          map.remove(item);
        } else {
          map[item] = count - 1;
        }
      } else {
        return false;
      }
    }
    return map.isEmpty;
  }
}
