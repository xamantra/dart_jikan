import '../../models/anime/index.dart';

import '../../utils/index.dart';

Future<JikanResult<JikanAnimeCharacterStaff>> jikanGetAnimeCharacterStaff(
  int animeId, {
  Map<String, String> headers,
}) async {
  var result = await request(
    'anime/$animeId/characters_staff',
    JikanAnimeCharacterStaff.fromRawJson,
    headers,
  );
  return result;
}
