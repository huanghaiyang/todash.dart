import 'package:todash/src/isNull.dart';

bool isFlattenable(value) {
  return !isNull(value) && value is Set || value is List;
}