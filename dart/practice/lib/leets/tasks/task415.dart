import 'package:practice/leets/task.dart';

class Task415 extends Task {
  @override
  void execute() {
    try {
      final result = addStrings("6", "501");
      print(result);
    } catch (e) {
      print(e);
    }
  }

  String addStrings(String num1, String num2) {
    final runes1 = reversedRunes(num1).iterator;
    final runes2 = reversedRunes(num2).iterator;

    String? result;
    var remainder = 0;
    while (true) {
      runes1.moveNext();
      runes2.moveNext();

      final sum = (runes1.current ?? 0) + (runes2.current ?? 0) + remainder;

      if (sum == 0 && runes1.current == null && runes2.current == null) {
        break;
      }

      result = "${sum % 10}${result ?? ''}";
      remainder = sum ~/ 10;
    }

    return result ?? '0';
  }

  Iterable<int?> reversedRunes(String text) sync* {
    final length = text.runes.length;

    for (var i = length - 1; i >= 0; i--) {
      yield text.runes.elementAt(i) - 48;
    }
  }
}
