int strictIndexOf(List array, dynamic value, [int fromIndex]) {
  fromIndex = fromIndex == null ? 0 : fromIndex;
  return array.indexOf(value, fromIndex);
}
