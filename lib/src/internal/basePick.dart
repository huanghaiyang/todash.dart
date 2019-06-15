import 'package:todash/src/internal/basePickBy.dart';
import 'package:todash/src/internal/hasIn.dart';
import 'package:todash/src/internal/hasDeepIn.dart';

Map basePick(Map object, List paths) {
  return basePickBy(object, paths, (value, path) {
    return hasIn(object, path) || hasDeepIn(object, path);
  });
}
