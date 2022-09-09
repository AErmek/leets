import 'package:practice/leets/task.dart';

class Task844 extends Task {
  @override
  void execute() {
    // TODO: implement execute
  }

  bool backspaceCompare(String s, String t) {
    return executeBackspace(s) == executeBackspace(t);
  }

  String executeBackspace(String s) {
    List<int> list = [];

    for (var item in s.runes) {
      if (item == 35) {
        if (list.isNotEmpty) {
          list.removeLast();
        }
        continue;
      }

      list.add(item);
    }

    return String.fromCharCodes(list);
  }
}
