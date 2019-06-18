List fill(List array, [dynamic value, int start, int end]) {
  if (start == null) start = 0;
  int length = array.length;
  if (end == null || end >= length) end = length;
  if (start >= 0 && end >= 0 && (start >= length || start >= end)) {
    return array;
  }
  if (start < 0 && start > -length) {
    start = -start > length ? 0 : (length + start);
  } else if (start <= -length) {
    start = 0;
  }
  if (end < 0 && end > -length) {
    end = -end < length ? length + end : length;
  } else if (end <= -length) {
    end = 0;
  }

  array.fillRange(start, end, value);
  return array;
}
