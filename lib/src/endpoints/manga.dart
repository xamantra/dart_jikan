
import '../docs/index.dart';
import '../models/manga/index.dart';
import '../utils/index.dart';

mixin JikanMangaEndpoints implements JikanMangaDocs {
  Future<JikanResult<JikanMangaDetails?>> getManga({
    required int mangaId,
    Map<String, String>? headers,
  }) async {
    var result = await request(
      'manga/$mangaId',
      JikanMangaDetails.fromRawJson,
      headers,
    );
    return result;
  }
}
