import 'package:practice/leets/task.dart';

class Task2351 extends Task {
  @override
  void execute() {
    final result = repeatedCharacter("abcbaczz");
    print(result);
  }

  String repeatedCharacter(String s) {
    Set<String> set = {};
    for (var i = 0; i < s.length; i++) {
      if (set.contains(s[i])) {
        return s[i];
      }
      set.add(s[i]);
    }
    return "";
  }
}
