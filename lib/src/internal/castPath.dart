import 'package:todash/src/internal/isKey.dart';
import 'package:todash/src/internal/stringToPath.dart';

List<String> castPath(dynamic value, Map map) {
  if (value is List) {
    return value;
  }
  return isKey(value, map) ? [value.toString()] : stringToPath(value.toString());
}
