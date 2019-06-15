import 'package:todash/src/internal/stringToPath.dart';
import 'package:todash/src/internal/toKey.dart';
import 'package:todash/src/internal/isKey.dart';
import 'package:todash/src/internal/isIndex.dart';

bool hasDeepIn(Map map, dynamic path) {
  List paths = stringToPath(path);
  dynamic nested = map;
  for(int i = 0 ; i < paths.length ; i ++) {
    dynamic shortPath = paths[i];
    if(nested is Map) {
      String key = toKey(shortPath, nested);
      if(!isKey(key, nested)) {
        return false;
      }
      nested = nested[key];
    }else if(nested is List) {
      shortPath = shortPath.toString();
      if(isIndex(paths[i])) {
        int index = int.parse(shortPath);
        if(nested.length <= index) {
          return false;
        }else {
          nested = nested[index];
        }
      }
    }
  }
  return true;
}