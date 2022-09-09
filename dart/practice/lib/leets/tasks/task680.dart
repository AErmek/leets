import 'package:practice/leets/task.dart';

class Task680 extends Task {
  @override
  void execute() {
    final result = validPalindrome(
        "aguokepatgbnvfqmgmlcupuufxoohdfpgjdmysgvhmvffcnqxjjxqncffvmhvgsymdjgpfdhooxfuupuculmgmqfvnbgtapekouga");
    print(result);
  }

  bool validPalindrome(String s) {
    var i = 0;
    var j = s.length - 1;

    while (i != j && j > i) {
      if (s[i] != s[j]) {
        // print('Error on ${s[i]} and ${s[j]}');
        if (isValidPalindrome(s.substring(i, j))) {
          return true;
        }
        // print("======");
        if (isValidPalindrome(s.substring(i + 1, j + 1))) {
          return true;
        }
        return false;
      }
      i++;
      j--;
    }

    return true;
  }

  bool isValidPalindrome(String s) {
    // print(s);
    for (var i = 0; i < s.length / 2; i++) {
      // print('${s[i]} : ${s[s.length - 1 - i]}');
      if (s[i] != (s[s.length - 1 - i])) {
        return false;
      }
    }

    return true;
  }
}
