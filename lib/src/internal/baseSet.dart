import 'package:todash/src/internal/assignValue.dart';
import 'package:todash/src/internal/castPath.dart';
import 'package:todash/src/internal/isIndex.dart';
import 'package:todash/src/internal/toKey.dart';

Map baseSet(Map map, dynamic path, dynamic value, [Function customizer]) {
  List<String> paths = [];
  if (path is List) {
    paths = path;
  } else if (path is String) {
    paths = castPath(path, map);
  }
  int length = paths.length;
  int lastIndex = length - 1;

  int index = -1;
  dynamic nested = map;

  while (nested != null && ++index < length) {
    String key = toKey(paths[index], nested);
    dynamic newValue = value;

    if (index != lastIndex) {
      dynamic objValue = nested[key];
      newValue = customizer != null ? customizer(objValue, key, nested) : null;
      if (newValue == null) {
        if (objValue is Map) {
          newValue = objValue;
        } else {
          newValue = isIndex(paths[index + 1]) ? [] : {};
        }
      }
    }
    assignValue(nested, key, newValue);
    nested = nested[key];
    if(index == 0) {
      map[key] = nested;
    }
  }
  return map;
}
