import 'package:practice/leets/task.dart';

class Task482 extends Task {
  @override
  void execute() {
    final result = licenseKeyFormatting("5F3Z-2e-9-w", 4);
    print(result);
  }

  // String licenseKeyFormatting(String s, int k) {
  //   return String.fromCharCodes(licenseKeyFormatting2(s, k));
  // }

  // Iterable<int> licenseKeyFormatting2(String s, int k) sync* {
  //   var kSum = 0;
  //   for (var item in customRunes(s)) {
  //     if (item != 45) {
  //       if (kSum == k) {
  //         yield 45;
  //         kSum = 0;
  //       }
  //       yield item;
  //       kSum++;
  //     }
  //   }
  // }

  String licenseKeyFormatting(String s, int k) {
    List<int> sb = [];
    var kSum = 0;
    for (var i = s.length - 1; i >= 0; i--) {
      if (s[i] != '-') {
        if (kSum == k) {
          sb.add('-'.codeUnitAt(0));
          kSum = 0;
        }
        sb.add(s[i].toUpperCase().codeUnitAt(0));
        kSum++;
      }
    }
    return String.fromCharCodes(sb.reversed);
  }

  // String licenseKeyFormatting(String s, int k) {
  //   String sb = '';
  //   var kSum = 0;
  //   for (var i = s.length - 1; i >= 0; i--) {
  //     if (s[i] != '-') {
  //       if (kSum == k) {
  //         sb = "-$sb";
  //         kSum = 0;
  //       }
  //       sb = "${s[i].toUpperCase()}$sb";
  //       kSum++;
  //     }
  //   }
  //   return sb;
  // }

  // Iterable<int> customRunes(String s) sync* {
  //   final length = s.toUpperCase().runes.length;
  //   for (var i = length - 1; i >= 0; i--) {
  //     yield s.runes.elementAt(i);
  //   }
  // }
}
