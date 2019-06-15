List slice(List list, [start, end]) {
  int length = list == null ? 0 : list.length;
  if (length == 0) {
    return new List();
  }
  start = start == null ? 0 : start;
  end = end == null ? length : end;

  if (start < 0) {
    start = -start > length ? 0 : (length + start);
  }
  end = end > length ? length : end;
  if (end < 0) {
    end += length;
  }
  length = start > end ? 0 : (end - start);

  int index = -1;
  List result = new List(length);
  while (++index < length) {
    result[index] = list[index + start];
  }
  return result;
}
