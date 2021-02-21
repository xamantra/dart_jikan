import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import '../../models/index.dart';
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
  var response = await http.get('$jikan_base/manga/$id', headers: headers);
  if (response.statusCode != 200) {
    var error = JikanError.fromRawJson(response.body);
    var result = JikanResult(response: null, error: error, statusCode: response.statusCode);
    return result;
  }
  var data = JikanMangaDetails.fromRawJson(response.body);
  var result = JikanResult(response: data, error: null, statusCode: response.statusCode);
  return result;
}
