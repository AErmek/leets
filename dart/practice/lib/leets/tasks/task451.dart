import 'package:practice/leets/task.dart';

class Task451 extends Task {
  @override
  void execute() {
    final result = frequencySort("Aabb");
    print(result);
  }

  String frequencySort(String s) {
    Map<String, int> map = {};
    for (var i = 0; i < s.length; i++) {
      map[s[i]] = (map[s[i]] ?? 0) + 1;
    }

    var sortedKeys = map.entries.toList()
      ..sort((k1, k2) => k2.value.compareTo(k1.value));
    return sortedKeys.fold<String>(
        "",
        (previousValue, element) =>
            "$previousValue${element.key * element.value}");
  }
}
