import '../../models/anime/index.dart';
import '../../utils/index.dart';

Future<JikanResult<JikanAnimeDetails>> jikanGetAnime(
  int animeId, {
  Map<String, String> headers,
}) async {
  var result = await request(
    'anime/$animeId',
    JikanAnimeDetails.fromRawJson,
    headers,
  );
  return result;
}
