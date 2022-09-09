void iterable() {
  final results = syncGen(4);

  print("picked ${results.toSet()}");
}

Iterable<int> syncGen(int n) sync* {
  for (var i = 0; i < n; i++) {
    print("touch $i");
    yield i;
    yield i + 1;
  }
}
