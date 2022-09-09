import 'package:practice/leets/task.dart';

class Task836 extends Task {
  @override
  void execute() {
    // TODO: implement execute
  }

  bool isRectangleOverlap(List<int> rec1, List<int> rec2) {
    if (rec1[0] >= rec2[2] || rec2[0] >= rec1[2]) {
      return false;
    }

    // If one rectangle is above other
    if (rec1[3] <= rec2[1] || rec2[3] <= rec1[1]) {
      return false;
    }
    return true;
  }
}
