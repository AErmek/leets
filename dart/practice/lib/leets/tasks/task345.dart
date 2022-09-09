import 'package:practice/leets/task.dart';

class Task345 extends Task {
  @override
  void execute() {
    final result = reverseVowels("Eva, can I stab bats in a cave?");
    print(result);
  }

  String reverseVowels(String s) {
    var i = 0;
    var j = s.length - 1;
    Set<int> setOfVowels = {97, 101, 105, 111, 117, 65, 69, 73, 79, 85};
    List<int> newS = List.generate(s.length, (index) => s.codeUnitAt(index));

    while (j > i) {
      if (!setOfVowels.contains(newS[i])) {
        i++;
        continue;
      }

      if (!setOfVowels.contains(newS[j])) {
        j--;
        continue;
      }

      var temp = newS[i];
      newS[i] = newS[j];
      newS[j] = temp;

      i++;
      j--;
    }

    return String.fromCharCodes(newS);
  }

  // String reverseVowels(String s) {
  //   var i = 0;
  //   var j = s.length - 1;
  //   Set<int> setOfVowels = {97, 101, 105, 111, 117, 65, 69, 73, 79, 85};
  //   List<int> newS = List.generate(s.length, (index) => s.codeUnitAt(index));

  //   while (j > i) {
  //     bool canSwap = true;
  //     if (!setOfVowels.contains(newS[i])) {
  //       i++;
  //       canSwap = false;
  //     }

  //     if (!setOfVowels.contains(newS[j])) {
  //       j--;
  //       canSwap = false;
  //     }

  //     if (!canSwap) {
  //       continue;
  //     }

  //     var temp = newS[i];
  //     newS[i] = newS[j];
  //     newS[j] = temp;

  //     i++;
  //     j--;
  //   }

  //   return String.fromCharCodes(newS);
  // }
}
