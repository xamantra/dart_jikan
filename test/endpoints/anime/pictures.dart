import 'package:test/test.dart';

import '../../jikan.dart';
import '../../limit.dart';

Future<void> pictures() async {
  var result1 = await limit(jikan.getAnimePictures(animeId: 21));
  var result2 = await limit(jikan.getAnimePictures(animeId: 999999));

  test('should return one piece pictures', () async {
    expect(result1.response!.pictures!.any((x) => x.large == 'https://cdn.myanimelist.net/images/anime/5/19082l.jpg'), true);
    expect(result1.hasData, true);
  });

  test('should return an error', () async {
    expect(result2.response, null);
    expect(result2.hasError, true);
  });
}
