import 'package:meta/meta.dart';

import '../../models/manga/index.dart';
import '../../utils/index.dart';

/// A single manga object with all its details.
///
/// **Endpoint Path:** `/manga/{id}`
/// ### Example
/// ```dart
/// var result = await jikanGetManga(id: 1517);
/// var jojo = result.response; // JoJo Part 1 details
///
/// // you can also check for an error before accessing the manga details.
/// if (result.hasError) {
///   print(result.error.message);
/// }
/// ```
/// If there's an error, the `.response` object will be null.
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
