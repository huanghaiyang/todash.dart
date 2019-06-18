import 'package:todash/src/internal/baseFindIndex.dart';
import 'package:todash/src/internal/baseIsTrue.dart';
import 'package:todash/src/internal/strictIndexOf.dart';

int baseIndexOf(List array, dynamic value, [int fromIndex]) {
  if (value is Function) {
    return baseFindIndex(array, value, fromIndex);
  } else {
    return strictIndexOf(array, value, fromIndex);
  }
}
