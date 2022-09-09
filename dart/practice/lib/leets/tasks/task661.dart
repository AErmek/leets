import 'package:practice/leets/task.dart';

class Task661 extends Task {
  @override
  void execute() {
    final result = imageSmoother([
      [100, 200, 100],
      [200, 50, 200],
      [100, 200, 100]
    ]);
  }

  List<List<int>> imageSmoother(List<List<int>> img) {
    List<List<int>> result = List<List<int>>.generate(
        img.length, (index) => List<int>.generate(img[index].length, (j) => 0));
    for (var i = 0; i < img.length; i++) {
      for (var j = 0; j < img[i].length; j++) {
        double sum = 0;
        int count = 0;
        for (var ki = -1; ki < 2; ki++) {
          for (var kj = -1; kj < 2; kj++) {
            var ri = i + ki;
            var rj = j + kj;
            if (ri >= 0 && ri < img.length && rj >= 0 && rj < img[i].length) {
              sum += img[ri][rj];
              print([ri, rj]);
              count++;
            }
          }
        }
        print('sum $sum / count $count');
        result[i][j] = (sum / count).floor();
      }
    }

    return result;
  }
}
