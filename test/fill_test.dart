import 'dart:math';

import 'package:test/test.dart';
import 'package:todash/todash.dart';

void main() {
  group('fill', () {
    test('should use a default `start` of `0` and a default `end` of `length`',
        () {
      List array = [1, 2, 3];
      expect(fill(array, 'a'), ['a', 'a', 'a']);
    });

    test('should work with a positive `start`', () {
      List array = [1, 2, 3];
      expect(fill(array, 'a', 1), [1, 'a', 'a']);
    });

    test('should work with a `start` >= `length`', () {
      each([3, 4, pow(2, 32)], (start, [index, array]) {
        List array = [1, 2, 3];
        expect(fill(array, 'a', start), [1, 2, 3]);
      });
    });

    test('should work with a negative `start`', () {
      List array = [1, 2, 3];
      expect(fill(array, 'a', -1), [1, 2, 'a']);
    });

    test('should work with a negative `start` <= negative `length`', () {
      each([-3, -4], (start, [index, array]) {
        List array = [1, 2, 3];
        expect(fill(array, 'a', start), ['a', 'a', 'a']);
      });
    });

    test('should work with `start` >= `end`', () {
      each([2, 3], (start, [index, array]) {
        List array = [1, 2, 3];
        expect(fill(array, 'a', start, 2), [1, 2, 3]);
      });
    });

    test('should work with a positive `end`', () {
      List array = [1, 2, 3];
      expect(fill(array, 'a', 0, 1), ['a', 2, 3]);
    });

    test('should work with a `end` >= `length`', () {
      each([3, 4, pow(2, 32)], (end, [index, array]) {
        List array = [1, 2, 3];
        expect(fill(array, 'a', 0, end), ['a', 'a', 'a']);
      });
    });

    test('should work with a negative `end`', () {
      List array = [1, 2, 3];
      expect(fill(array, 'a', 0, -1), ['a', 'a', 3]);
    });

    test('should work with a negative `end` <= negative `length`', () {
      each([-3, -4], (end, [index, array]) {
        List array = [1, 2, 3];
        expect(fill(array, 'a', 0, end), [1, 2, 3]);
      });
    });
  });
}
