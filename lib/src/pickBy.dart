import 'package:todash/src/internal/basePickBy.dart';
import 'package:todash/src/internal/getAllKeysIn.dart';
import 'package:todash/src/map.dart';
import 'package:todash/src/flattenDeep.dart';

Map pickBy(Map object, Function predicate) {
  if (object == null) {
    return {};
  }
  List props = map(getAllKeysIn(object), (prop) => [prop]);
  return basePickBy(object, flattenDeep(props), (value, path) => predicate(value, path));
}
