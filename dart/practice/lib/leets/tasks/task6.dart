import 'package:practice/leets/task.dart';

class Task6 extends Task {
  @override
  void execute() {
    final result = convert("PAYPALISHIRING", 4);
    print(result);
  }

  String convert(String s, int numRows) {
    if (numRows == 1) {
      return s;
    }
    List<List<int>> list = List.generate(numRows, (index) => []);
    int indexCaret = 0;
    bool expand = true;
    for (var item in s.runes) {
      list[indexCaret].add(item);

      indexCaret = indexCaret + (expand ? 1 : -1);

      if (indexCaret == 0 || indexCaret == numRows - 1) {
        expand = !expand;
      }
    }

    return list.map((e) => String.fromCharCodes(e)).join();
  }
}
