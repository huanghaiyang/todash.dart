Function wrap(Function func, Function execFunc) {
  return (
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
    List args = new List();
    args.add(func);
    void add(dynamic p) {
      if (p != null) {
        args.add(p);
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
    return Function.apply(execFunc, args);
  };
}
