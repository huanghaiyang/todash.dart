bool isKey(dynamic key, Map map) {
  for (dynamic k in map.keys) {
    if (k == key) {
      return true;
    }
  }
  for(dynamic k in map.keys) {
    if(k == key.toString()) return true;
  }
  for(dynamic k in map.keys) {
    try{
      key = num.parse(key);
      if(k == key) {
        return true;
      }
    }catch(e) {
      print(e.toString());
      return false;
    }
  }
  return false;
}
