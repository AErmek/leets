import 'package:practice/leets/task.dart';

class Task709 extends Task {
  @override
  void execute() {
    final result = toLowerCase("AufffZet");
    print(result);
  }

  String toLowerCase(String s) {
    return String.fromCharCodes(toLowerIterable(s));
  }

  Iterable<int> toLowerIterable(String s) sync* {
    for (var item in s.runes) {
      if (item >= 65 && item <= 90) {
        yield item + 32;
      } else {
        yield item;
      }
    }
  }
}
