Map fromPairs(List<List> pairs) {
  Map result = {};
  if (pairs == null) {
    return result;
  }
  for(List list in pairs) {
    if(list.length >= 1) {
      dynamic key = list[0];
      result[key] = list.length == 1? null: list[1];
    }
  }
  return result;
}