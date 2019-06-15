import 'package:test/test.dart';
import 'package:todash/todash.dart';
import 'package:todash/src/internal/test/utils.dart';

void main() {
  group('pickBy', () {
    test('should work with a predicate argument', () {
      var object = { 'a': 1, 'b': 2, 'c': 3, 'd': 4 };

      var actual = pickBy(object, (n, [dynamic path]) {
        return n == 1 || n == 3;
      });

      expect(actual, { 'a': 1, 'c': 3 });
    });

    test('should not treat keys with dots as deep paths', () {
      var object = { 'a.b.c': 1 },
          actual = pickBy(object, stubTrue);

      expect(actual, { 'a.b.c': 1 });
    });
  });
}