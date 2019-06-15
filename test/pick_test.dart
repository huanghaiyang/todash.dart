import 'package:test/test.dart';
import 'package:todash/todash.dart';

void main() {
  group('pick', () {
    var object = {'a': 1, 'b': 2, 'c': 3, 'd': 4},
        nested = {
      'a': 1,
      'b': {'c': 2, 'd': 3}
    };

    test('should flatten `paths`', () {
      expect(pick(object, ['a', 'c']), {'a': 1, 'c': 3});
      expect(pick(object, ['a', 'd'], 'c'), {'a': 1, 'c': 3, 'd': 4});
    });

    test('should support deep paths', () {
      expect(pick(nested, 'b.c'), {
        'b': {'c': 2}
      });
    });

    test('should support path arrays', () {
      var object = {
        'a.b': 1,
        'a': {'b': 2}
      },
          actual = pick(object, [
        ['a.b']
      ]);

      expect(actual, {'a.b': 1});
    });

    test('should pick a key over a path', () {
      var object = {
        'a.b': 1,
        'a': {'b': 2}
      };

      each([
        'a.b',
        ['a.b']
      ], (path) {
        expect(pick(object, path), {'a.b': 1});
      });
    });

    test('should coerce `paths` to strings', () {
      expect(pick({'0': 'a', '1': 'b'}, 0), {'0': 'a'});
    });

    test('should return an empty object when `object` is nullish', () {
      each([null], (value) {
        expect(pick(value, 'valueOf'), {});
      });
    });

    test('should work with `arguments` object `paths`', () {
      expect(pick(object, 'a', 'c'), {'a': 1, 'c': 3});
    });
  });
}
