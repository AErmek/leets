import 'package:practice/leets/task.dart';

class Task28 extends Task {
  @override
  void execute() {
    var result = strStr("hello", 'o');
    print(result);
  }

  int strStr(String haystack, String needle) {
    if (needle.isEmpty) {
      return 0;
    }

    for (var i = 0; i < haystack.length - needle.length + 1; i++) {
      if (haystack[i] == needle[0]) {
        bool match = true;
        for (var j = 1; j < needle.length; j++) {
          if (haystack[i + j] != needle[j]) {
            match = false;
            break;
          }
        }
        if (match) {
          return i;
        }
      }
    }

    return -1;
  }
}
