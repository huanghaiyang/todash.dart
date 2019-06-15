import 'package:todash/src/internal/baseFlatten.dart';

List flatten(dynamic array) {
  return baseFlatten(array, 1);
}