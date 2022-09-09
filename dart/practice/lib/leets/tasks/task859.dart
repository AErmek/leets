import 'package:practice/leets/task.dart';

class Task859 extends Task {
  @override
  void execute() {
    // TODO: implement execute
  }

  bool buddyStrings(String s, String goal) {
    if (s.length != goal.length) {
      return false;
    }

    List<int> indexes = [];
    Set<int> set = {};
    bool hasDuplicate = false;

    for (var i = 0; i < s.length; i++) {
      if (s[i] != goal[i]) {
        indexes.add(i);

        if (indexes.length > 2) {
          return false;
        }
      }

      if (!hasDuplicate) {
        if (set.contains(s.codeUnitAt(i))) {
          hasDuplicate = true;
        } else {
          set.add(s.codeUnitAt(i));
        }
      }
    }

    if (indexes.length == 1) {
      return false;
    }

    if (indexes.length == 2) {
      return s[indexes[0]] == goal[indexes[1]] &&
          s[indexes[1]] == goal[indexes[0]];
    }

    return hasDuplicate;
  }
}
