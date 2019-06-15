import 'package:todash/src/internal/baseFlatten.dart';
import 'package:todash/src/internal/maxNumber.dart';
import 'package:todash/src/internal/arguments_errors.dart' show argNo1MustBeSetOrList;

List flatMapDeep(dynamic array, Function iteratee) {
  if(!(array is List || array is Set)) {
    throw new Exception(argNo1MustBeSetOrList);
  }
  if(array is Set) {
    return baseFlatten(array.map(iteratee), maxNumber);
  }else if(array is List) {
    return baseFlatten(array.map(iteratee), maxNumber);
  }
}