dynamic clone(dynamic source) {
  if (source is List) return List.from(source);
  if (source is Set) return Set.from(source);
  if (source is Map) return Map.from(source);
}
