import 'package:practice/leets/task.dart';

class Task54 extends Task {
  @override
  void execute() {
    final result = spiralOrder([
      [1, 2, 3, 4],
      [5, 6, 7, 8],
      [9, 10, 11, 12]
    ]);
    print(result);
  }

  List<int> spiralOrder(List<List<int>> matrix) {
    List<int> result = [];

    final iLength = matrix.length;
    final jLength = matrix[0].length;

    final iDirection = [0, 1, 0, -1];
    final jDirection = [1, 0, -1, 0];

    var currentDirection = 0;

    var currentI = 0;
    var currentJ = 0;

    for (var i = 0; i < iLength * jLength; i++) {
      result.add(matrix[currentI][currentJ]);

      matrix[currentI][currentJ] = 101;
      var tempI = currentI + iDirection[currentDirection];
      var tempJ = currentJ + jDirection[currentDirection];

      if (tempJ < 0 ||
          tempJ == jLength ||
          tempI < 0 ||
          tempI == iLength ||
          matrix[tempI][tempJ] == 101) {
        currentDirection = (currentDirection + 1) % 4;
        currentI += iDirection[currentDirection];
        currentJ += jDirection[currentDirection];
      } else {
        currentI = tempI;
        currentJ = tempJ;
      }
    }

    return result;
  }

  // List<int> spiralOrder(List<List<int>> matrix) {
  //   List<int> result = [];

  //   final iLength = matrix.length;
  //   final jLength = matrix[0].length;

  //   final iDirection = [0, 1, 0, -1];
  //   final jDirection = [1, 0, -1, 0];

  //   var currentDirection = 0;

  //   var currentI = 0;
  //   var currentJ = 0;

  //   for (var i = 0; i < iLength * jLength; i++) {
  //     result.add(matrix[currentI][currentJ]);

  //     matrix[currentI][currentJ] = 101;
  //     currentI += iDirection[currentDirection];
  //     currentJ += jDirection[currentDirection];

  //     if (currentJ < 0 ||
  //         currentJ == jLength ||
  //         currentI < 0 ||
  //         currentI == iLength ||
  //         matrix[currentI][currentJ] == 101) {
  //       currentI -= iDirection[currentDirection];
  //       currentJ -= jDirection[currentDirection];
  //       currentDirection = (currentDirection + 1) % 4;
  //       currentI += iDirection[currentDirection];
  //       currentJ += jDirection[currentDirection];
  //     }
  //   }

  //   return result;
  // }
}
