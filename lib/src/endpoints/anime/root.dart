import 'package:meta/meta.dart';

import '../../models/anime/index.dart';
import '../../utils/index.dart';

/// A single anime object with all its details.
///
/// **Endpoint Path:** `/anime/{id}`
/// ### Example
/// ```dart
/// var result = await jikanGetAnime(id: 21);
/// var onepiece = result.response; // One Piece details
///
/// // you can also check for an error before accessing the anime details.
/// if (result.hasError) {
///   print(result.error.message);
/// }
/// ```
/// If there's an error, the `.response` object will be null.
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
