import 'package:todash/src/internal/baseFlatten.dart';
import 'package:todash/src/internal/maxNumber.dart';

List flattenDeep(Object array) {
  return baseFlatten(array, maxNumber);
}