// getAnimeStats
import 'package:test/test.dart';

import '../../jikan.dart';
import '../../limit.dart';

Future<void> stats() async {
  var result1 = await limit(jikan.getAnimeStats(21));
  var result2 = await limit(jikan.getAnimeStats(999999));

  test('should return one piece statistics', () async {
    expect(result1.response.total >= (1349034 - 500), true);
    expect(result1.response.watching >= (884869 - 500), true);
    expect(result1.hasData, true);
  });

  test('should return an error', () async {
    expect(result2.response, null);
    expect(result2.hasError, true);
  });
}
