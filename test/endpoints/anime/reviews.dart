import 'package:test/test.dart';

import '../../jikan.dart';
import '../../limit.dart';

Future<void> reviews() async {
  var result1 = await limit(jikan.getAnimeReviews(animeId: 21));
  var result2 = await limit(jikan.getAnimeReviews(animeId: 999999));

  test('should return one piece reviews', () async {
    expect(result1.response.reviews.any((x) => x.malId == 2772), true);
    expect(result1.hasData, true);
  });

  test('should return an error', () async {
    expect(result2.response, null);
    expect(result2.hasError, true);
  });
}
