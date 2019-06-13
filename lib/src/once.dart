import 'package:todash/src/before.dart';

void once(Function func) {
  return before(2, func);
}