final INFINITY = 1 / 0;

dynamic toKey(dynamic key, Map map) {
  for(dynamic k in map.keys) {
    if(k == key) return key;
  }
  for(dynamic k in map.keys) {
    if(k == key.toString()) return key.toString();
  }
  for(dynamic k in map.keys) {
    try{
      key = num.parse(key);
      if(k == key) {
        return key;
      }
    }catch(e) {
      print(e.toString());
    }
  }
  return key;
}
