import 'package:practice/leets/task.dart';

class Task344 extends Task {
  @override
  void execute() {
    var result = ["h", "e", "l", "o"];
    reverseString(result);
    print(result);
  }

  void reverseString(List<String> s) {
    for (var i = 0; i < s.length / 2; i++) {
      if (s[i] != (s[s.length - 1 - i])) {
        var temp = s[i];
        s[i] = s[s.length - 1 - i];
        s[s.length - 1 - i] = temp;
      }
    }
  }
}
