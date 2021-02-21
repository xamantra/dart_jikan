import 'package:dart_jikan/src/models/index.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import '../../models/anime/index.dart';
import '../../utils/index.dart';

/// List of character and staff members.
///
/// **Endpoint Path:** `/anime/{id}/characters_staff`
/// ### Example
/// ```dart
/// var result = await jikanGetAnimeCharacterStaff(id: 21);
/// var onepiece = result.response; // One Piece characters and staffs
///
/// // you can also check for an error before accessing the anime details.
/// if (result.hasError) {
///   print(result.error.message);
/// }
/// ```
/// If there's an error, the `.response` object will be null.
Future<JikanResult<JikanAnimeCharacterStaff>> jikanGetAnimeCharacterStaff({
  @required int id,
  Map<String, String> headers,
}) async {
  var response = await http.get('$jikan_base/anime/$id/characters_staff', headers: headers);
  if (response.statusCode != 200) {
    var error = JikanError.fromRawJson(response.body);
    var result = JikanResult(response: null, error: error, statusCode: response.statusCode);
    return result;
  }
  var data = JikanAnimeCharacterStaff.fromRawJson(response.body);
  var result = JikanResult(response: data, error: null, statusCode: response.statusCode);
  return result;
}
