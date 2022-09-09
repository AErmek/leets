import 'package:practice/leets/task.dart';

class Task383 extends Task {
  @override
  void execute() {
    final result = canConstruct("fihjjjjei", "hjibagacbhadfaefdjaeaebgi");
    print(result);
  }

  bool canConstruct(String ransomNote, String magazine) {
    Map<int, int> map = {};
    for (var item in magazine.runes) {
      map[item] = (map[item] ?? 0) + 1;
    }

    for (var item in ransomNote.runes) {
      var count = map[item];
      if (count == null || count < 1) {
        return false;
      } else {
        map[item] = count - 1;
      }
    }

    return true;
  }
}
