import 'dart:async';
import 'dart:isolate';

Future<void> isolates() async {
  final sendPort = await _createSecondaryIsolate();
  sendPort.send("Hello world");
}

Future<SendPort> _createSecondaryIsolate() {
  final completer = Completer<SendPort>();
  final rp = ReceivePort();
  late StreamSubscription ss;
  ss = rp.listen((message) {
    if (message is SendPort) {
      completer.complete(message);
    } else {
      print("Message from main : $message");
      ss.cancel();
    }
  });

  Isolate.spawn(secondaryIsolate, rp.sendPort);

  return completer.future;
}

void secondaryIsolate(SendPort sendPort) {
  final rp = ReceivePort();
  sendPort.send(rp.sendPort);

  rp.listen((message) {
    print("Message from secondary: $message");
    sendPort.send(message);
    Isolate.current.kill();
  });
}
