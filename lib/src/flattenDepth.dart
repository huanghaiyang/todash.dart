import 'package:todash/src/internal/baseFlatten.dart';

List flattenDepth(dynamic array, [int depth]) {
  if (depth == null) {
    depth = 1;
  }
  return baseFlatten(array, depth);
}
