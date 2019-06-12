import 'package:todash/todash.dart';
import 'package:test/test.dart';

void main() {
  group('A group of slice method tests', () {

    setUp(() {

    });

    test('test slice with no arguments', () {
      List list = new List();
      list.add(1);
      list.add(2);
      list.add(3);
      expect(slice(list), list);
    });

    test('test slice with 1 argument', () {
      List list = new List();
      list.add(1);
      list.add(2);
      list.add(3);
      expect(slice(list, 1), list.sublist(1));
    });

    test('test slice with 2 arguments', () {
      List list = new List();
      list.add(1);
      list.add(2);
      list.add(3);
      expect(slice(list, 1, 2), list.sublist(1, 2));
    });

    test('test slice with 2 arguments', () {
      List list = new List();
      list.add(1);
      list.add(2);
      list.add(3);
      expect(slice(list, -1, 2), list.sublist(2, 2));
    });

    test('test slice with 2 arguments', () {
      List list = new List();
      list.add(1);
      list.add(2);
      list.add(3);
      expect(slice(list, -1, -2), new List());
    });

    test('test slice with 2 arguments', () {
      List list = new List();
      list.add(1);
      list.add(2);
      list.add(3);
      expect(slice(list, -2, 3), list.sublist(1, 3));
    });
    
  });
}
