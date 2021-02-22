import 'package:flutter_test/flutter_test.dart';

import '../../jikan.dart';
import '../../limit.dart';

Future<void> anime_details() async {
  var result1 = await limit(jikan.getAnime(id: 21));
  var result2 = await limit(jikan.getAnime(id: 999999));

  test('should return one piece', () async {
    expect(result1.response.malId, 21);
    expect(result1.hasData, true);
  });

  test('should return an error', () async {
    expect(result2.response, null);
    expect(result2.hasError, true);
  });
}
