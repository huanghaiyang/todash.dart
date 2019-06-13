import 'package:todash/todash.dart';
import 'package:test/test.dart';

void main() {
  group('A group of flatMap method tests', () {

    setUp(() {

    });

    test('test flatMap with no arguments', () {
      List list = new List();
      list.add(1);
      list.add(2);

      List expected = new List();
      expected.add(1);
      expected.add(1);
      expected.add(2);
      expected.add(2);
      expect(flatMap(list, (item) {
        List internal = new List();
        internal.add(item);
        internal.add(item);
        return internal;
      }), expected);
    });

  });
}
