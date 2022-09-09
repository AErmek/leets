import 'package:practice/leets/task.dart';

class Task205 extends Task {
  @override
  void execute() {
    final result = isIsomorphic("pazer", "title");
    print(result);
  }

  bool isIsomorphic(String s, String t) {
    Map<String, String> map = {};
    Set<String> set = {};
    //Map<int, int> tMap = {};
    for (var i = 0; i < s.length; i++) {
      if (map.containsKey(s[i])) {
        if (map[s[i]] != t[i]) {
          return false;
        }
      } else {
        if (set.contains(t[i])) {
          return false;
        }
        map[s[i]] = t[i];
        set.add(t[i]);
      }
    }

    return true;
  }
}
