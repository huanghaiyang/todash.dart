List<List> toPairs(Map value) {
  if (value == null) {
    return [];
  }
  List<List> result = [];
  for(MapEntry entry in value.entries) {
    result.add([entry.key, entry.value]);
  }
  return result;
}