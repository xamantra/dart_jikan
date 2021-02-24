import '../../models/anime/index.dart';

import '../../utils/index.dart';

Future<JikanResult<JikanAnimeStats>> jikanGetAnimeStats(
  int animeId, {
  Map<String, String> headers,
}) async {
  var result = await request(
    'anime/$animeId/stats',
    JikanAnimeStats.fromRawJson,
    headers,
  );
  return result;
}
