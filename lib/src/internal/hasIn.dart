import 'package:todash/src/internal/isKey.dart';

bool hasIn(Map map, dynamic key) {
  return isKey(key, map);
}