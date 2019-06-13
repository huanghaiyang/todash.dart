import 'package:todash/todash.dart';
import 'package:test/test.dart';

void main() {
  group('A group of negate method tests', () {

    setUp(() {

    });

    test('test negate with no arguments', () {
      List list = new List();
      list.add(1);
      list.add(2);
      list.add(3);

      List expected = new List();
      expected.add(1);
      expected.add(3);
      List result = List.from(list.where(negate(isEven)));
      expect(result, expected);
    });

  });
}
