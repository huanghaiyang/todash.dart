import 'dart:math';

import 'package:todash/src/internal/baseIndexOf.dart';

int findIndex(List array, dynamic value, [int fromIndex]) {
  int length = array == null ? 0 : array.length;
  if (length == 0) {
    return -1;
  }
  int index = fromIndex == null ? 0 : fromIndex;
  if (index < 0) {
    index = max(length + index, 0);
  }
  return baseIndexOf(array, value, index);
}
