import 'package:todash/src/internal/baseFlatten.dart';

List flattenDepth(Object array, [int depth]) {
  if(depth == null) {
    depth = 1;
  }
  return baseFlatten(array, depth);
}