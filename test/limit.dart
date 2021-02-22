import 'elapsed.dart';

/// Helper function to follow Jikan's rate limit.
Future<T> limit<T>(Future<T> call) async {
  var waitTime = 0;
  var e = 0;
  var response = await elapsed(call, (time) {
    e = time;
    waitTime = (2000 - time).clamp(0, 2000);
  });
  print('(test) : Time elapsed "${e}ms". Waiting for "${waitTime}ms"');
  await Future.delayed(Duration(milliseconds: waitTime));
  return response;
}
