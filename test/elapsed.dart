Future<T> elapsed<T>(Future<T> call, void Function(int) onFinish) async {
  T result;
  var started = DateTime.now().millisecondsSinceEpoch;
  result = await call;
  var finished = DateTime.now().millisecondsSinceEpoch;
  onFinish(finished - started);
  return result;
}
