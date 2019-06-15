import 'package:todash/src/internal/memoizeCapped.dart';

RegExp listIndexPattern = new RegExp("\\[\d+\\]");
RegExp splitPattern = new RegExp("\\.");

List stringToPath(String key) {
  return memoizeCapped((String string) {
    List<String> result = new List();
    for(String str in string.split(splitPattern)) {
      if(listIndexPattern.hasMatch(str)) {
        result.add(str.substring(1));
      }else {
        result.add(str);
      }
    }
    return result;
  }, key);
}
