@deprecated
List<String> toStringList(List source) {
  List<String> target = new List();
  for(dynamic item in source) {
    target.add(item.toString());
  }
  return target;
}