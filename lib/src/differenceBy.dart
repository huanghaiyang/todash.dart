import 'package:todash/src/internal/baseDifference.dart';

List differenceBy(List array, List values, [Function iteratee]) {
  return baseDifference(array, values, iteratee);
}
