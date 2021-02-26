import 'package:test/test.dart';

import '../../jikan.dart';
import '../../limit.dart';

Future<void> user_updates() async {
  var result1 = await limit(jikan.getAnimeUserUpdates(animeId: 1));
  var result2 = await limit(jikan.getAnimeUserUpdates(animeId: 999999));

  test('should return cowboy bepop recommendations', () async {
    expect(result1.response.users.isNotEmpty, true);
    expect(result1.hasData, true);
  });

  test('should return an error', () async {
    expect(result2.response, null);
    expect(result2.hasError, true);
  });
}
