List castArray(dynamic value) {
  if(value == null) return [];
  if(value is List) return value;
  return [value];
}