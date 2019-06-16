import 'package:test/test.dart';
import 'package:todash/src/internal/constants.dart';
import 'package:todash/src/internal/isIndex.dart';
import 'package:todash/src/internal/test/utils.dart';
import 'package:todash/todash.dart';

void main() {
  group('isIndex', () {
    test('should return `true` for indexes', () {
      var values = [
        [0],
        ['0'],
        ['1'],
        [3, 4],
        [MAX_SAFE_INTEGER - 1]
      ],
          expected = map(values, stubTrue);

      var actual = map(values, (args) {
        return Function.apply(isIndex, args);
      });

      expect(actual, expected);
    });

    test('should return `false` for non-indexes', () {
      var values = [
        ['1abc'],
        ['07'],
        ['0001'],
        [-1],
        [3, 3],
        [1.1],
        [MAX_SAFE_INTEGER]
      ],
          expected = map(values, stubFalse);

      var actual = map(values, (args) {
        return Function.apply(isIndex, args);
      });

      expect(actual, expected);
    });
  });
}
