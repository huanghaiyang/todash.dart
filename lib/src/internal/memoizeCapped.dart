import 'package:todash/src/memoize.dart';

const MAX_MEMOIZE_SIZE = 500;

dynamic memoizeCapped(Function func, String key) {
  dynamic result = memoize(func, (cache, key) {
    if (cache is Map) {
      if (cache.length == MAX_MEMOIZE_SIZE) {
        cache.clear();
      }
    }
    return key;
  });
  return result(key);
}
