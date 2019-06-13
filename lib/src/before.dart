dynamic before(int n, Function func) {
  dynamic result;
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
    if (--n > 0) {
      List args = new List();
      if(param1 != null) {
        args.add(param1);
      }
      if(param2 != null) {
        args.add(param2);
      }
      if(param3 != null) {
        args.add(param3);
      }
      if(param4 != null) {
        args.add(param4);
      }
      if(param5 != null) {
        args.add(param5);
      }
      if(param6 != null) {
        args.add(param6);
      }
      if(param7 != null) {
        args.add(param7);
      }
      if(param7 != null) {
        args.add(param7);
      }
      if(param8 != null) {
        args.add(param8);
      }
      if(param9 != null) {
        args.add(param9);
      }
      if(param10 != null) {
        args.add(param10);
      }
      result = Function.apply(func, args);
    }
    if (n <= 1) {
      func = null;
    }
    return result;
  };
}