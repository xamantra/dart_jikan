import 'package:meta/meta.dart';

import 'package:jikan_models/jikan_models.dart';

import '../../utils/index.dart';

Future<JikanResult<JikanAnimeEpisodes>> jikanGetAnimeEpisodes({
  @required int id,
  int page = 1,
  Map<String, String> headers,
}) async {
  var result = await request(
    'anime/$id/episodes/$page',
    JikanAnimeEpisodes.fromRawJson,
    headers,
  );
  return result;
}
