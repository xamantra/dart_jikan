import 'package:test/test.dart';

import '../../jikan.dart';
import '../../limit.dart';

Future<void> manga_details() async {
  var result1 = await limit(jikan.getManga(mangaId: 1517));
  var result2 = await limit(jikan.getManga(mangaId: 999999));

  test('should return jojo part 1', () async {
    expect(result1.response!.malId, 1517);
    expect(result1.hasData, true);
  });

  test('should return an error', () async {
    expect(result2.response, null);
    expect(result2.hasError, true);
  });
}
