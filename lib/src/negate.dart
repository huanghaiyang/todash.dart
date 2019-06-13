dynamic negate(Function predicate) {
  return ([
    dynamic param1,
    dynamic param2,
    dynamic param3,
    dynamic param4,
    dynamic param5,
    dynamic param6,
    dynamic param7,
    dynamic param8,
    dynamic param9,
    dynamic param10
  ]) {
    List list = new List();
    if(param1 != null) {
      list.add(param1);
    }
    if(param2 != null) {
      list.add(param2);
    }
    if(param3 != null) {
      list.add(param3);
    }
    if(param4 != null) {
      list.add(param4);
    }
    if(param5 != null) {
      list.add(param5);
    }
    if(param6 != null) {
      list.add(param6);
    }
    if(param7 != null) {
      list.add(param7);
    }
    if(param7 != null) {
      list.add(param7);
    }
    if(param8 != null) {
      list.add(param8);
    }
    if(param9 != null) {
      list.add(param9);
    }
    if(param10 != null) {
      list.add(param10);
    }
    return !Function.apply(predicate, list);
  };
}