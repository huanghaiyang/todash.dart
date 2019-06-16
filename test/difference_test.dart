import 'package:test/test.dart';
import 'package:todash/todash.dart';
import 'package:todash/src/internal/test/utils.dart';

Function getMethodByName(String methodName) {
  switch (methodName) {
    case 'difference':
      return difference;
    case 'differenceBy':
      return differenceBy;
    case 'differenceWith':
      return differenceWith;
    default:
      return difference;
  }
}

void main() {
  group('difference methods', () {
    each(['difference', 'differenceBy', 'differenceWith'], (methodName, [index, array]) {
      Function func = getMethodByName(methodName);

      test('`_.' + methodName + '` should return the difference of two arrays',
          () {
        var actual = func([2, 1], [2, 3]);
        expect(actual, [1]);
      });

      test('`_.' + methodName + '` should treat `-0` as `0`', () {
        var array = [-0, 0];

        var actual = map(array, (value) {
          return func(array, [value]);
        });

        expect(actual, [[], []]);

        actual = map(func([-0, 1], [1]), toString);
        expect(actual, ['0']);
      });

      test('`_.' + methodName + '` should match `NULL`', () {
        expect(func([1, null, 3], [null, 5, null]), [1, 3]);
      });

      test('`_.' + methodName + '` should work with large arrays', () {
        List array1 = range(LARGE_ARRAY_SIZE + 1),
            array2 = range(LARGE_ARRAY_SIZE);
        var a = {},
            b = {},
            c = {};

        array1.addAll([a,b,c]);
        array2.addAll([a,b,c]);

        expect(func(array1, array2), [LARGE_ARRAY_SIZE]);
      });

      test(
          '`_.' + methodName + '` should work with large arrays of `-0` as `0`',
          () {
        var array = [-0, 0];

        var actual = map(array, (value) {
          var largeArray = times(
              LARGE_ARRAY_SIZE, constant(value));
          return func(array, largeArray);
        });

        expect(actual, [[], []]);

        var largeArray = times(LARGE_ARRAY_SIZE, stubOne);
        actual =
            map(func([-0, 1], largeArray), toString);
        expect(actual, ['0']);
      });

      test('`_.' + methodName + '` should work with large arrays of `null`', () {
        var largeArray = times(LARGE_ARRAY_SIZE, stubNull);
        expect(func([1, null, 3], largeArray), [1, 3]);
      });

      test('`_.' + methodName + '` should work with large arrays of objects',
          () {
        var object1 = {},
            object2 = {},
            largeArray = times(
                LARGE_ARRAY_SIZE, constant(object1));

        expect(func([object1, object2], largeArray), [object2]);
      });

      test(
          '`_.' + methodName + '` should ignore values that are not array-like',
          () {
        var array = [1, null, 3];

        expect(func(null, array), []);
        expect(func(array, [1,2,3]), [null]);
      });
    });
  });
}
