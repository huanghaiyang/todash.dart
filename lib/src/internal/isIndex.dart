int MAX_SAFE_INTEGER = 9007199254740991;
RegExp regExp = new RegExp("^(?:0|[1-9]\d*)\$");

bool isIndex(dynamic value, [int length]) {
  length = length == null ? MAX_SAFE_INTEGER : length;
  if (value is int) {
    return value < length && value > -1;
  } else if (value is String) {
    if (regExp.hasMatch(value)) {
      int v = int.parse(value);
      return v > -1 && v % 1 == 0 && v < length;
    }
  }
  return false;
}
