import 'package:dart_jikan/src/utils/index.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;

import '../limit.dart';

Future<void> base_url() async {
  var response = await limit(http.get(Uri.parse(jikan_base)));

  test('jikan base url must be correct', () async {
    expect(jikan_base, 'https://api.jikan.moe/v3');
    expect(response.statusCode, 200);
  });
}
