import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import '../../models/index.dart';
import '../../utils/index.dart';

/// A single anime object with all its details.
///
/// ### Example
/// ```dart
/// var result = await jikanGetAnime(id: 30);
/// var onepiece = result.response; // One Piece details
///
/// // you can also check for an error before accessing the anime details.
/// if (result.hasError) {
///   print(result.error.message);
/// }
/// ```
/// If there's an error, the `.response` object will be null.
///
/// **Endpoint Path:** `/anime/{id}`
Future<JikanResult<JikanAnimeDetails>> jikanGetAnime({
  @required int id,
  Map<String, String> headers,
}) async {
  var response = await http.get('$jikan_base/anime/$id', headers: headers);
  if (response.statusCode != 200) {
    var error = JikanError.fromRawJson(response.body);
    var result = JikanResult(response: null, error: error, statusCode: response.statusCode);
    return result;
  }
  var data = JikanAnimeDetails.fromRawJson(response.body);
  var result = JikanResult(response: data, error: null, statusCode: response.statusCode);
  return result;
}
