List arrayEach(List array, Function iteratee) {
  int index = -1;
  int length = array.length;

  while (++index < length) {
    if (iteratee(array[index], index, array) == false) {
      break;
    }
  }
  return array;
}