import 'dart:math';
import 'package:todash/src/slice.dart';

List chunk(List list, int size) {
  size = max(size, 0);
  int length = list == null ? 0 : list.length;
  if (length == 0 || size < 1) {
    return new List();
  }
  int index = 0;
  int resIndex = 0;
  List result = new List((length / size).ceil());

  while (index < length) {
    result[resIndex++] = slice(list, index, (index += size));
  }
  return result;
}