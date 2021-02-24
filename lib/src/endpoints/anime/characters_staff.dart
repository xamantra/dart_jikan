import '../../models/anime/index.dart';
import 'package:meta/meta.dart';

import '../../utils/index.dart';

Future<JikanResult<JikanAnimeCharacterStaff>> jikanGetAnimeCharacterStaff({
  @required int id,
  Map<String, String> headers,
}) async {
  var result = await request(
    'anime/$id/characters_staff',
    JikanAnimeCharacterStaff.fromRawJson,
    headers,
  );
  return result;
}
