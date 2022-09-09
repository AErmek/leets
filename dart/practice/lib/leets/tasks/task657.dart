import 'package:practice/leets/task.dart';

class Task657 extends Task {
  @override
  void execute() {
    final result = judgeCircle("UDLRR");
    print(result);
  }

  bool judgeCircle(String moves) {
    var x = 0;
    var y = 0;
    for (var item in moves.runes) {
      if (item == 82) {
        x++;
      } else if (item == 76) {
        x--;
      } else if (item == 85) {
        y++;
      } else if (item == 68) {
        y--;
      }
    }

    return x == 0 && y == 0;
  }
}
