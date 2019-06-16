import 'package:todash/src/map.dart';

final INFINITY = 1 / 0;

String toString(dynamic value) {
  if (value == null) {
    return '';
  }
  // Exit early for strings to avoid a performance hit in some environments.
  if (value is String) {
    return value;
  }
  if (value is List) {
    // Recursively convert values (susceptible to call stack limits).
    return '${map(value, (other) => other == null ? other : toString(other))}';
  }
  String result = '${value}';
  return (result == '0' && (1 / value) == -INFINITY) ? '-0' : result;
}
