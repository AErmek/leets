import 'package:practice/leets/task.dart';

class Task500 extends Task {
  @override
  void execute() {
    final result = findWords(["abdfs", "cccd", "qwwewm"]);
    print(result);
  }

  List<String> findWords(List<String> words) {
    var abc = [
      {'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'},
      {'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l'},
      {'z', 'x', 'c', 'v', 'b', 'n', 'm'},
    ];
    List<String> result = [];
    outerLoop:
    for (var i = 0; i < words.length; i++) {
      final word = words[i].toLowerCase();
      final index = abc.indexWhere((element) => element.contains(word[0]));

      for (var i = 1; i < word.length; i++) {
        if (!abc[index].contains(word[i])) {
          continue outerLoop;
        }
      }

      result.add(words[i]);
    }
    return result;
  }
}
