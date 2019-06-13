import 'dart:math';

dynamic overArgs(Function func, List<Function> transforms) {
  int funcsLength = transforms.length;
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
    int index = -1;
    int length = min(args.length, funcsLength);
    while (++index < length) {
      List argList = new List();
      argList.add(args[index]);
      args[index] = Function.apply(transforms[index], argList);
    }
    return Function.apply(func, args);
  };
}