import 'package:todash/src/internal/baseRange.dart';

Function createRange([bool fromRight = false]) {
  return (int start, [int end, int step]) {
    if (end == null) {
      end = start;
      start = 0;
    }
    step = step == null ? (start < end ? 1 : -1) : step;
    return baseRange(start, end, step, fromRight);
  };
}
