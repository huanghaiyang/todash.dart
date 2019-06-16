num toNumber(dynamic value) {
  if (value is num) {
    return value;
  }else if(value is String) {
    return num.parse(value);
  }
}