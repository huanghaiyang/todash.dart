bool arrayIncludesWith(List array, dynamic target, Function comparator) {
  if(array == null) return false;
  if(array.isEmpty) return false;
  for(dynamic value in array) {
    if(Function.apply(comparator, [value])) {
      return true;
    }
  }
  return false;
}