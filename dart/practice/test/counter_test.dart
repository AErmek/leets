import 'package:practice/counter.dart';
import 'package:test/test.dart';

void main() {
  group("Counter test", () {
    test('initial value should be 0', () {
      expect(Counter().value, 0);
    });

    test('value should be incremented', () {
      final counter = Counter();

      counter.increment();

      expect(counter.value, 1);
    });

    test('value should be decremented', () {
      final counter = Counter();

      counter.decrement();

      expect(counter.value, -1);
    });
  });
}
