Map groupBy(List collection, Function iteratee) {
  if(collection == null || collection.isEmpty) return {};
  Map<dynamic, List> result = new Map();
  for(int i = 0 ; i < collection.length ; i ++) {
    dynamic item = collection[i];
    dynamic key = iteratee(item, i, collection);
    if(result.containsKey(key)) {
      result[key].add(item);
    }else {
      List value = new List();
      value.add(item);
      result[key] = value;
    }
  }
  return result;
}