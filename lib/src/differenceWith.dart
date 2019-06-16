import 'package:todash/src/internal/baseDifference.dart';

List differenceWith(List array, List values, [Function comparator]) {
  return baseDifference(array, values, null, comparator);
}
