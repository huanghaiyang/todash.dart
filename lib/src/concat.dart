List concat(List source,
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
  if (source == null) {
    source = [];
  }
  List result = new List();
  result.addAll(source);
  void add(dynamic p) {
    if (p != null) {
      if(p is List) {
        result.addAll(p);
      }else {
        result.add(p);
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
  return result;
}
