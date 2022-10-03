import 'package:practice/leets/task.dart';

class Task38 extends Task {
  @override
  void execute() {
    final result = countAndSay(4);
    print(result);
  }

  String countAndSay(int n) {
    StringBuffer sb = StringBuffer("1");
    for (var i = 1; i < n; i++) {
      count(sb);
    }

    return sb.toString();
  }

  void count(StringBuffer sb) {
    final origin = sb.toString();
    sb.clear();

    var count = 1;

    for (var i = 1; i < origin.length; i++) {
      if (origin[i - 1] == origin[i]) {
        count++;
      } else {
        sb.write('$count${origin[i - 1]}');
        count = 1;
      }
    }

    sb.write('$count${origin[origin.length - 1]}');
  }
}
