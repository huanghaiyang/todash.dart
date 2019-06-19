import 'dart:convert';

dynamic cloneDeep(dynamic source) {
  dynamic cloned = jsonDecode(jsonEncode(source));
  return cloned;
}
