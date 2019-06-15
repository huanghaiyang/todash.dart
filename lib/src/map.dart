dynamic map(dynamic array, Function iteratee) {
  if (array is Set) {
    return array.map(iteratee);
  } else if (array is List) {
    return array.map(iteratee);
  }
}
