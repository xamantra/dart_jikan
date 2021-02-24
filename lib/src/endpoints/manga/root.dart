import '../../models/manga/index.dart';
import '../../utils/index.dart';

Future<JikanResult<JikanMangaDetails>> jikanGetManga(
  int mangaId, {
  Map<String, String> headers,
}) async {
  var result = await request(
    'manga/$mangaId',
    JikanMangaDetails.fromRawJson,
    headers,
  );
  return result;
}
