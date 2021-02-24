import '../../models/anime/index.dart';
import '../../utils/index.dart';

Future<JikanResult<JikanAnimeEpisodes>> jikanGetAnimeEpisodes(
  int animeId, {
  int page = 1,
  Map<String, String> headers,
}) async {
  var result = await request(
    'anime/$animeId/episodes/$page',
    JikanAnimeEpisodes.fromRawJson,
    headers,
  );
  return result;
}
