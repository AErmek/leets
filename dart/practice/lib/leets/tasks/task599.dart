import 'package:practice/leets/task.dart';

class Task599 extends Task {
  @override
  void execute() {
    final result = findRestaurant(
      ["Shogun", "Tapioca Express", "Burger King", "KFC"],
      ["Piatti", "Burger King", "KFC", "Tapioca Express", "Shogun"],
    );

    print(result);
  }

  List<String> findRestaurant(List<String> list1, List<String> list2) {
    int minPosition = 2000;
    List<String> result = [];
    //outerLoop:
    for (var i = 0; i < list1.length; i++) {
      for (var j = 0; j < list2.length; j++) {
        if (i + j > minPosition) {
          break;
        }

        if (list1[i] != list2[j]) {
          continue;
        }

        if (i + j < minPosition) {
          result.clear();
          minPosition = i + j;
        }

        result.add(list1[i]);
      }
    }

    return result;
  }
}
