import 'package:todash/todash.dart';
import 'package:test/test.dart';

void main() {
  group('A group of chunk method tests', () {

    setUp(() {

    });

    test('test chunk with no arguments', () {
      List list = new List();
      list.add(1);
      list.add(2);
      list.add(3);

      List expected = new List();
      expected.add(list.sublist(0, 2));
      expected.add(list.sublist(2, 3));
      expect(chunk(list, 2), expected);
    });

  });
}
