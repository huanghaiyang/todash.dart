import 'package:todash/src/internal/baseDifference.dart';

List difference(List array, List values, [Function iteratee, Function comparator]) {
  return baseDifference(array, values, iteratee, comparator);
}
