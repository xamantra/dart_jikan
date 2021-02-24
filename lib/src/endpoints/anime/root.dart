import 'package:meta/meta.dart';

import 'package:jikan_models/jikan_models.dart';

import '../../utils/index.dart';

Future<JikanResult<JikanAnimeDetails>> jikanGetAnime({
  @required int id,
  Map<String, String> headers,
}) async {
  var result = await request(
    'anime/$id',
    JikanAnimeDetails.fromRawJson,
    headers,
  );
  return result;
}
