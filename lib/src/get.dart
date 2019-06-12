import 'dart:core';

dynamic get(Object map, String propertyChain, [Object defaultValue]) {
  List<String> properties = propertyChain.split(new RegExp('\\.'));
  dynamic result = map;
  while(properties.isNotEmpty) {
    String property = properties.removeAt(0);
    if(property != null) {
      if(result != null) {
        if(result is Map) {
          result = result[property];
        }else if(result is List) {
          if(property.startsWith(new RegExp('\\[')) && property.endsWith(']')) {
            result = List.from(result).elementAt(int.parse(property.substring(1, property.length - 1)));
          }
        }
      }
    }
  }
  if(defaultValue != null && result == null) return defaultValue;
  return result;
}