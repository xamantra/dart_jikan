import 'package:test/test.dart';

import '../../jikan.dart';
import '../../limit.dart';

Future<void> characters_staff() async {
  var result1 = await limit(jikan.getAnimeCharacterStaff(animeId: 21));
  var result2 = await limit(jikan.getAnimeCharacterStaff(animeId: 999999));

  test('should return one piece characters and staffs', () async {
    // Brook
    expect(result1.response!.characters!.any((x) => x.malId == 5627), true);
    // Nagamine, Tatsuya (Director)
    expect(result1.response!.staff!.any((x) => x.malId == 12867), true);
    expect(result1.hasData, true);
  });

  test('should return an error', () async {
    expect(result2.response, null);
    expect(result2.hasError, true);
  });
}
