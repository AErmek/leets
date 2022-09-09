import 'dart:async';

import 'dart:collection';

Future<void> streams() async {
  // final s = Stream.fromIterable([1, 2, 3]).asyncMap((event) async {
  //   await Future.delayed(Duration(seconds: 1));
  //   return event;
  // }).forEach(print);

  // final s2 = Stream.periodic(
  //         Duration(seconds: 1), (computationCount) => computationCount)
  //     .asBroadcastStream()
  //   ..listen(print)
  //   ..listen((event) {
  //     print("duplicate $event");
  //   });

  // final s3 = Stream.periodic(
  //     Duration(seconds: 1), (computationCount) => computationCount);
  // await Future.delayed(Duration(seconds: 2));
  // s3.listen(print);

  // final s4 = Stream.periodic(
  //     Duration(seconds: 1), (computationCount) => computationCount);
  // await for (var item in s4) {
  //   print(item);
  // }

  // final s4 = Stream.periodic(
  //     Duration(seconds: 1), (computationCount) => computationCount);
  // await for (var item in s4) {
  //   print(item);
  // }

  // asyncGen().listen(
  //   (event) {
  //     print(event);
  //   },
  //   onError: (e) {
  //     print("Error $e");
  //   },
  //   cancelOnError: false,
  // );

//TODO
  // final controller = StreamController<int>();
  // controller.stream.listen(print);

  // controller.add(3);
  // await Future.delayed(Duration(seconds: 5));
  // controller.add(5);

  // controller.close();

  final puppets = PuppetsController();
  puppets.add(1);
  puppets.add(2);

  final int z;
  z = 1;
  print("Z $z");
}

class PuppetsController implements Sink<int> {
  final _source = StreamController<int>();

  @override
  void add(data) {
    _source.add(data);
  }

  @override
  void close() {
    _source.close();
  }
}

Stream<int> asyncGen() async* {
  for (var i = 0; i < 10; i++) {
    //throw Exception("Not good exception");
    yield i;
  }
}
