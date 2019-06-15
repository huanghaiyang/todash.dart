import 'package:todash/src/internal/castPath.dart';
import 'package:todash/src/internal/toKey.dart';

dynamic baseGet(Map map, dynamic path) {
  List<String> paths = castPath(path, map);

  int index = 0;
  int length = paths.length;
  dynamic result;
  while (map != null && index < length) {
    if(map is Map) {
      result = map[toKey(paths[index++], map)];
      if(result is Map) {
        map = result;
      }
    }
  }
  return (index != 0 && index == length) ? result : null;
}
