import 'package:test/test.dart';
import 'package:todash/todash.dart';

void main() {
  group('fromPairs', () {
    test('should accept a two dimensional array', () {
      var array = [
        ['a', 1],
        ['b', 2]
      ],
          object = {'a': 1, 'b': 2},
          actual = fromPairs(array);

      expect(actual, object);
    });

    test('should not support deep paths', () {
      var actual = fromPairs([
        ['a.b', 1]
      ]);
      expect(actual, {'a.b': 1});
    });

    test('should support consuming the return value of `_.toPairs`', () {
      var object = {'a.b': 1};
      expect(fromPairs(toPairs(object)), object);
    });
  });
}
