int toInt(dynamic value) {
  if (value == null) {
    return 0;
  }
  if (value is int) {
    return value;
  }
  if (value is String) {
    if (value.isNotEmpty) {
      return int.parse(value);
    }
  }
  return 0;
}
