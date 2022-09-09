import 'package:practice/leets/task.dart';

class Task832 extends Task {
  @override
  void execute() {
    final result = flipAndInvertImage([
      [1, 1, 0, 0],
      [1, 0, 0, 1],
      [0, 1, 1, 1],
      [1, 0, 1, 0]
    ]);
    print(result);
  }

  List<List<int>> flipAndInvertImage(List<List<int>> image) {
    var n = image.length, m = image[0].length;

    for (var i = 0; i < n; i++) {
      for (var j = 0; j < m / 2; j++) {
        var jj = m - 1 - j;
        if (image[i][j] != (image[i][jj])) {
          continue;
        }
        var val = image[i][j] == 1 ? 0 : 1;
        image[i][j] = val;
        image[i][jj] = val;
      }
    }

    return image;
  }
}
