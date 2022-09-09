import 'package:practice/leets/task.dart';

class Task551 extends Task {
  @override
  void execute() {
    final result = checkRecord('PPALLLP');
    print(result);
  }

  bool checkRecord(String s) {
    bool hasAbsent = false;
    int lateCount = 0;
    for (var item in s.runes) {
      if (item == 76) {
        lateCount++;
        if (lateCount >= 3) {
          return false;
        }
        continue;
      }
      if (item == 65) {
        if (hasAbsent) return false;
        hasAbsent = true;
      }
      lateCount = 0;
    }
    return true;
  }
}
