import 'package:todash/src/internal/baseGet.dart';
import 'package:todash/src/internal/baseSet.dart';
import 'package:todash/src/internal/castPath.dart';

Map basePickBy(Map map, List paths, Function predicate) {
  int index = -1;
  int length = paths.length;
  Map result = new Map();

  while (++index < length) {
    dynamic path = paths[index];
    dynamic value = baseGet(map, path);
    if (predicate(value, path)) {
      baseSet(result, castPath(path, map), value);
    }
  }
  return result;
}
