import '../../models/anime/index.dart';

import '../../utils/index.dart';

Future<JikanResult<JikanAnimeNews>> jikanGetAnimeNews(
  int animeId, {
  Map<String, String> headers,
}) async {
  var result = await request(
    'anime/$animeId/news',
    JikanAnimeNews.fromRawJson,
    headers,
  );
  return result;
}
