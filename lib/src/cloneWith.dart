import 'package:todash/src/clone.dart';

dynamic cloneWith(dynamic source, Function customizer) {
  dynamic cloned = clone(source);
  if (customizer != null) {
    return customizer(cloned);
  }
  return cloned;
}
