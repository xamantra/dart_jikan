import 'package:test/test.dart';

import '../../jikan.dart';
import '../../limit.dart';

Future<void> forum() async {
  var result1 = await limit(jikan.getAnimeForum(animeId: 21));
  var result2 = await limit(jikan.getAnimeForum(animeId: 999999));

  test('should return one piece related forum topics', () async {
    // no definite flag to check if something is related to one piece
    // forum is dynamic and can change everytime.
    expect(result1.response!.topics!.any((x) => x.url!.contains('https://myanimelist.net/forum/?topicid=')), true);
    expect(result1.hasData, true);
  });

  test('should return an error', () async {
    expect(result2.response, null);
    expect(result2.hasError, true);
  });
}
