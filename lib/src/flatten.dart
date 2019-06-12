import 'package:todash/src/internal/baseFlatten.dart';

List flatten(Object array) {
  return baseFlatten(array, 1);
}