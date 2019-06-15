void baseAssignValue(dynamic object, dynamic key, dynamic value) {
  if (object is Map) {
    object[key] = value;
  } else if (object is List) {
    object[int.parse(key.toString())] = value;
  } else {
    throw new Exception('object must be a Map or List');
  }
}
