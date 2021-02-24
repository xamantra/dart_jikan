import 'package:jikan_models/jikan_models.dart';
import 'package:meta/meta.dart';

import '../../utils/index.dart';

Future<JikanResult<JikanMangaDetails>> jikanGetManga({
  @required int id,
  Map<String, String> headers,
}) async {
  var result = await request(
    'manga/$id',
    JikanMangaDetails.fromRawJson,
    headers,
  );
  return result;
}
