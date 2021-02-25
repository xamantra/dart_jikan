import 'package:test/test.dart';

import '../../jikan.dart';
import '../../limit.dart';

Future<void> recommendations() async {
  var result1 = await limit(jikan.getAnimeRecommendations(animeId: 21));
  var result2 = await limit(jikan.getAnimeRecommendations(animeId: 999999));

  test('should return one piece recommendations', () async {
    expect(result1.response.recommendations.any((x) => x.malId == 6702), true);
    expect(result1.hasData, true);
  });

  test('should return an error', () async {
    expect(result2.response, null);
    expect(result2.hasError, true);
  });
}
