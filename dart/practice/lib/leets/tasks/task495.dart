import 'package:practice/leets/task.dart';

class Task495 extends Task {
  @override
  void execute() {
    final result = findPoisonedDuration([1, 3], 3);
    print(result);
  }

  int findPoisonedDuration(List<int> timeSeries, int duration) {
    var result = 0;

    for (var i = 0; i < timeSeries.length - 1; i++) {
      final interval = timeSeries[i + 1] - timeSeries[i];
      result += interval < duration ? interval : duration;
      //print(result);
    }
    return result + duration;
  }
}
