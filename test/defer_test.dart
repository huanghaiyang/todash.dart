import 'package:todash/todash.dart';
import 'package:test/test.dart';

void main() {
  group('A group of defer method tests', () {

    setUp(() {

    });

    test('test defer with no arguments', () {
      defer(() {
        print('timeout1');
      });
      defer(() {
        print('timeout2');
      });
    });

  });
}
