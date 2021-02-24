import '../../models/anime/index.dart';

import '../../utils/index.dart';

Future<JikanResult<JikanAnimeVideos>> jikanGetAnimeVideos(
  int animeId, {
  Map<String, String> headers,
}) async {
  var result = await request(
    'anime/$animeId/videos',
    JikanAnimeVideos.fromRawJson,
    headers,
  );
  return result;
}
