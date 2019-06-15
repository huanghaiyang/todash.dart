dynamic map(dynamic array, Function iteratee) {
  if (array is Set) {
    return List.from(array.map(iteratee));
  } else if (array is List) {
    return List.from(array.map(iteratee));
  }
}
