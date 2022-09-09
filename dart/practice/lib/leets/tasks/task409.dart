import 'package:practice/leets/task.dart';

class Task409 extends Task {
  @override
  void execute() {
    final result = longestPalindrome("AzZaaA");
    print(result);
  }

  int longestPalindrome(String s) {
    Map<int, int> map = {};

    for (var item in s.runes) {
      map[item] = (map[item] ?? 0) + 1;
    }

    bool singleUsed = false;
    return map.values.fold<int>(0, (previousValue, element) {
      if (element.isEven) {
        previousValue += element;
      } else {
        previousValue += singleUsed ? element - 1 : element;
        singleUsed = true;
      }

      return previousValue;
    });
  }
}
