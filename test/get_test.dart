import 'package:todash/todash.dart';
import 'package:test/test.dart';

void main() {
  group('A group of get method tests', () {

    setUp(() {

    });

    test('test map', () {
      expect(get({'1': 'A'}, '1', ''), 'A');
    });

    test('test property chain', () {
      expect(get({'1': {'2': 'A'}}, '1.2', ''), 'A');
    });
  });
}
