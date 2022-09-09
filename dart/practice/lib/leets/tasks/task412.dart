import 'package:practice/leets/task.dart';

class Task412 extends Task {
  @override
  void execute() {
    final result = fizzBuzz(15);
    print(result);
  }

  List<String> fizzBuzz(int n) {
    List<String> array = [];
    for (var i = 1; i <= n; i++) {
      final result = "${i % 3 == 0 ? "Fizz" : ''}${i % 5 == 0 ? "Buzz" : ''}";
      array.add(result.isEmpty ? '$i' : result);
    }
    return array;
  }

  // Iterable<String> fizzBuzzIterator(int n) sync* {
  //   for (var i = 1; i <= n; i++) {
  //     int sum = 0;
  //     sum += i % 3 == 0 ? 1 : 0;
  //     sum += i % 5 == 0 ? 2 : 0;

  //     switch (sum) {
  //       case 1:
  //         yield "Fizz";
  //         break;
  //       case 2:
  //         yield "Buzz";
  //         break;
  //       case 3:
  //         yield "FizzBuzz";
  //         break;
  //       default:
  //         yield i.toString();
  //     }
  //   }
  // }
}
