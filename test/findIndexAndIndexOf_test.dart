import 'dart:math';

import 'package:test/test.dart';
import 'package:todash/src/internal/test/utils.dart';
import 'package:todash/todash.dart';

Function getMethodByName(String methodName) {
  switch (methodName) {
    case 'findIndex':
      return findIndex;
    case 'indexOf':
      return indexOf;
    default:
      return findIndex;
  }
}

void main() {
  group('findIndex and indexOf', () {
    each(['findIndex', 'indexOf'], (methodName, [index, array]) {
      var array = [1, 2, 3, 1, 2, 3],
          func = getMethodByName(methodName),
          resolve = (dynamic value) {
        return (dynamic other, [int index, List array]) {
          return eq(value, other);
        };
      };

      test(
          '`_.' +
              methodName +
              '` should return the index of the first matched value', () {
        expect(func(array, resolve(2)), 1);
      });

      test('`_.' + methodName + '` should work with a positive `fromIndex`',
          () {
        expect(func(array, resolve(1), 2), 3);
      });

      test('`_.' + methodName + '` should work with a `fromIndex` >= `length`',
          () {
        var values = [6, 8, pow(2, 32)],
            expected = map(values, constant([-1, -1, -1]));

        var actual = map(values, (fromIndex) {
          return [
            func(array, resolve(null), fromIndex),
            func(array, resolve(1), fromIndex),
            func(array, resolve(''), fromIndex)
          ];
        });

        expect(actual, expected);
      });

      test('`_.' + methodName + '` should work with a negative `fromIndex`',
          () {
        expect(func(array, resolve(2), -3), 4);
      });

      test(
          '`_.' +
              methodName +
              '` should work with a negative `fromIndex` <= `-length`', () {
        var values = [-6, -8], expected = map(values, stubZero);

        var actual = map(values, (fromIndex) {
          return func(array, resolve(1), fromIndex);
        });

        expect(actual, expected);
      });
    });
  });
}
