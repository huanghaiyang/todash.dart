import 'package:todash/todash.dart';
import 'package:test/test.dart';

void main() {
  group('A group of before method tests', () {

    setUp(() {

    });

    test('test before', () {
      dynamic result = before(2, (int i){ return i; });
      result(1);
      expect(result(2), 1);
    });

    test('test before', () {
      dynamic result = before(3, (int i){ return i; });
      result(1);
      expect(result(2), 2);
    });

    test('test before', () {
      dynamic result = before(3, (int i, int j){ return i + j; });
      result(1, 2);
      expect(result(3, 4), 7);
    });

  });
}
