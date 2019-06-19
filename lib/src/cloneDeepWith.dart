import 'package:todash/src/cloneDeep.dart';

dynamic cloneDeepWith(dynamic source, Function customizer) {
  dynamic cloned = cloneDeep(source);
  if (customizer != null) {
    return customizer(cloned);
  }
  return customizer;
}
