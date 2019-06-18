int baseFindIndex(List array, Function predicate,
    [int fromIndex, bool fromRight]) {
  int length = array.length;
  fromRight = fromRight == null ? false : fromRight;
  if (fromIndex == null) {
    if (fromRight) {
      fromIndex = length;
    } else {
      fromIndex = 0;
    }
  }
  int index = fromIndex + (fromRight ? 1 : -1);

  while ((fromRight ? index-- > 0 : ++index < length)) {
    if (predicate(array[index], index, array)) {
      return index;
    }
  }
  return -1;
}
