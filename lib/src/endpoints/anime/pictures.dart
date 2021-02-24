import '../../models/anime/index.dart';

import '../../utils/index.dart';

Future<JikanResult<JikanAnimePictures>> jikanGetAnimePictures(
  int animeId, {
  Map<String, String> headers,
}) async {
  var result = await request(
    'anime/$animeId/pictures',
    JikanAnimePictures.fromRawJson,
    headers,
  );
  return result;
}
