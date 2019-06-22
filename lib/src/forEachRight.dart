void forEachRight(List collection, Function iteratee) {
  int index = collection.length;
  while (--index >= 0) {
    if (iteratee(collection[index], index, collection) == false) {
      break;
    }
  }
}