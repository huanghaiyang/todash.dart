import 'package:todash/src/internal/arrayIncludesWith.dart';
import 'package:todash/src/map.dart';

final LARGE_ARRAY_SIZE = 200;

List baseDifference(List array, List values,
    [Function iteratee, Function comparator]) {
  List result = [];
  if (array == null || array.isEmpty) {
    return result;
  }
  if (iteratee != null) {
    values = map(values, (value) => iteratee(value));
  }
  for (dynamic value in array) {
    dynamic computed = iteratee == null ? value : iteratee(value);
    if (comparator != null) {
      if (!arrayIncludesWith(values, computed, comparator)) {
        result.add(value);
      }
    } else if (!values.contains(computed)) {
      result.add(value);
    }
  }
  return result;
}
