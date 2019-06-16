import 'dart:math';
import 'package:todash/src/internal/constants.dart';

List times(int n, Function iteratee) {
  if (n < 1 || n > MAX_SAFE_INTEGER) {
    return [];
  }
  int index = -1;
  final length = min(n, MAX_ARRAY_LENGTH);
  final result = new List(length);
  while (++index < length) {
    result[index] = iteratee(index);
  }
  index = MAX_ARRAY_LENGTH;
  n -= MAX_ARRAY_LENGTH;
  while (++index < n) {
    iteratee(index);
  }
  return result;
}
