import 'package:practice/leets/task.dart';

//TODO could be improved
class Task14 extends Task {
  @override
  void execute() {
    final result = longestCommonPrefix(["flower", "flow", "flight"]);

    print(result);
  }

  String longestCommonPrefix(List<String> strs) {
    var length = -1;

    for (var item in strs) {
      if (length == -1 || length > item.length) {
        length = item.length;
      }
    }

    final sb = StringBuffer();

    for (var i = 0; i < length; i++) {
      String? char;
      for (var str in strs) {
        if (char == null) {
          char = str[i];
        } else if (char != str[i]) {
          char = null;
          break;
        }
      }

      if (char != null) {
        sb.write(char);
      } else {
        break;
      }
    }

    return sb.toString();
  }
}
