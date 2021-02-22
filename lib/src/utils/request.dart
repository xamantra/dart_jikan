import 'package:http/http.dart' as http;

import '../models/index.dart';
import 'index.dart';

Future<JikanResult<T>> request<T>(
  String path,
  T Function(String) transformer,
  Map<String, String> headers, {
  bool returnPlain = false,
}) async {
  var response = await http.get('$jikan_base/$path', headers: headers);
  if (response.statusCode != 200) {
    var error = JikanError.fromRawJson(response.body);
    var result = JikanResult(response: null, error: error, statusCode: response.statusCode);
    return result;
  }
  var data = transformer(response.body);
  var result = JikanResult(response: data, error: null, statusCode: response.statusCode);
  return result;
}
