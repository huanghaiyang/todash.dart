import 'package:todash/todash.dart';
import 'package:test/test.dart';

void main() {
  group('A group of flatten method tests', () {

    setUp(() {

    });
    test('test flatten with Set', () {
      List list = new List();
      list.add(1);
      list.add(2);
      list.add(3);
      list.add(4);

      Set set = new Set();
      set.add(1);
      Set s = new Set();
      s.add(2);
      s.add(3);
      set.add(s);
      set.add(4);
      expect(flatten(set), list);
    });
    test('test flatten with List', () {
      List list = new List();
      list.add(1);
      list.add(2);
      list.add(3);
      list.add(4);

      List l1 = new List();
      l1.add(1);
      List l2 = new List();
      l2.add(2);
      l2.add(3);
      l1.add(l2);
      l1.add(4);
      expect(flatten(l1), list);
    });
  });
}
