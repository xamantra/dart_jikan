import 'package:test/test.dart';

import '../../jikan.dart';
import '../../limit.dart';

Future<void> news() async {
  var result1 = await limit(jikan.getAnimeNews(animeId: 21));
  var result2 = await limit(jikan.getAnimeNews(animeId: 999999));

  test('should return one piece related news', () async {
    expect(result1.response!.articles!.any((x) => x.url == 'https://myanimelist.net/news/61601526'), true);
    expect(result1.hasData, true);
  });

  test('should return an error', () async {
    expect(result2.response, null);
    expect(result2.hasError, true);
  });
}
