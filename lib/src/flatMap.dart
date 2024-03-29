import 'package:todash/src/internal/baseFlatten.dart';
import 'package:todash/src/internal/arguments_errors.dart' show argNo1MustBeSetOrList;

List flatMap(dynamic array, Function iteratee) {
  if(!(array is List || array is Set)) {
    throw new Exception(argNo1MustBeSetOrList);
  }
  if(array is Set) {
    return baseFlatten(array.map(iteratee), 1);
  }else if(array is List) {
    return baseFlatten(array.map(iteratee), 1);
  }
}