import 'dart:math';

List baseRange(int start, int end, int step, bool fromRight) {
  int index = -1;
  int length = max(((end - start) / (step != null ? step : 1)).ceil(), 0);
  List result = new List(length);

  while (length-- > 0) {
    result[fromRight ? length : ++index] = start;
    start += step;
  }
  return List.from(result);
}
