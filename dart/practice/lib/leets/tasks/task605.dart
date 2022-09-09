import 'package:practice/leets/task.dart';

class Task605 extends Task {
  @override
  void execute() {
    final result = canPlaceFlowers([1, 0, 0, 0], 1);
    print(result);
  }

  bool canPlaceFlowers(List<int> flowerbed, int n) {
    var count = 0;
    var distance = 0;

    if (flowerbed.length == 1) {
      distance++;
    }

    for (var i = 0; i < flowerbed.length; i++) {
      if (count == n) {
        return true;
      }

      if (flowerbed[i] == 0) {
        distance++;
        if (i == 0 || i == flowerbed.length - 1) {
          distance++;
        }
        if (distance >= 3) {
          count++;
          distance = 1;
        }
      } else {
        distance = 0;
      }
    }

    return count == n;
  }
}
