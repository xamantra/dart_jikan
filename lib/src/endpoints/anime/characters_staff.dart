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
  var result = await request(
    'anime/$id/characters_staff',
    JikanAnimeCharacterStaff.fromRawJson,
    headers,
  );
  return result;
}
