import 'package:todash/src/internal/isFlattenable.dart';

List baseFlatten(Object toArray, int depth,
    [Function predicate, bool isStrict, List result]) {
  if (predicate == null) {
    predicate = isFlattenable;
  }
  if (isStrict == null) {
    isStrict = false;
  }
  if (result == null) {
    result = new List();
  }

  if (toArray == null) {
    return result;
  }
  for (Object value in toArray) {
    if (depth > 0 && predicate(value)) {
      if (depth > 1) {
        baseFlatten(value, depth, predicate, isStrict, result);
      } else {
        for (Object v in value) {
          result.add(v);
        }
      }
    } else if (!isStrict) {
      // 非严格模式下，将不符合过滤规则的元素加入到末尾
      result.add(value);
    }
  }
  return result;
}
