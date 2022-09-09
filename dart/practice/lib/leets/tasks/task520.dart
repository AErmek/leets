import 'package:practice/leets/task.dart';

class Task520 extends Task {
  @override
  void execute() {
    final result = detectCapitalUse("FlaG");
    print(result);
  }

  bool detectCapitalUse(String word) {
    bool shouldCapital = word.codeUnitAt(0) <= 90 ? true : false;
    shouldCapital = word.length > 1
        ? word.codeUnitAt(1) > 90
            ? false
            : shouldCapital
        : shouldCapital;
    for (var item in word.runes.skip(1)) {
      if ((item > 90 && shouldCapital) || (item <= 90 && !shouldCapital)) {
        return false;
      }
    }

    return true;
  }
}
