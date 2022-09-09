import 'package:practice/leets/task.dart';

class Task744 extends Task {
  @override
  void execute() {
    print(nextGreatestLetter(["a", "b"], 'z'));
  }

  String nextGreatestLetter(List<String> letters, String target) {
    final targetValue = target.codeUnitAt(0);

    for (var item in letters) {
      if (item.codeUnitAt(0) > targetValue) {
        return item;
      }
    }

    return letters.first;
  }
}
