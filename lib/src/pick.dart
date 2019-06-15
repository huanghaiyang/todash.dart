import 'package:todash/src/internal/basePick.dart';
import 'package:todash/src/flattenDeep.dart';

Map pick(Map object,
    [dynamic param1,
    dynamic param2,
    dynamic param3,
    dynamic param4,
    dynamic param5,
    dynamic param6,
    dynamic param7,
    dynamic param8,
    dynamic param9,
    dynamic param10]) {
  if (object == null) {
    return {};
  } else {
    List paths = new List();
    void add(dynamic p) {
      if (p != null) {
        if (p is List) {
          paths.addAll(flattenDeep(p));
        } else {
          paths.add(p);
        }
      }
    }

    add(param1);
    add(param2);
    add(param3);
    add(param4);
    add(param5);
    add(param6);
    add(param7);
    add(param8);
    add(param9);
    add(param10);
    return basePick(object, paths);
  }
}
