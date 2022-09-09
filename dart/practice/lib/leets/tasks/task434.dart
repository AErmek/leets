import 'package:practice/leets/task.dart';

//TODO can be improved
class Task434 extends Task {
  @override
  void execute() {
    final result = countSegments(" Hello,   my name is John   ");
    print(result);
  }

  int countSegments(String s) {
    int last = 0;
    int segmentCount = 0;
    final strimmed = s.trim();
    for (var item in strimmed.runes) {
      if (last == 32 && item != 32) {
        segmentCount++;
      }
      last = item;
    }
    return strimmed.isNotEmpty ? segmentCount + 1 : segmentCount;
  }
}
