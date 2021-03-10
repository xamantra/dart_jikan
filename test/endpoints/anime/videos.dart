import 'package:test/test.dart';

import '../../jikan.dart';
import '../../limit.dart';

Future<void> videos() async {
  var result1 = await limit(jikan.getAnimeVideos(animeId: 21));
  var result2 = await limit(jikan.getAnimeVideos(animeId: 999999));

  test('should return one piece videos and episodes', () async {
    expect(result1.response!.promo!.any((x) => x.title == 'Wano Kuni Trailer'), true);
    expect(result1.response!.episodes!.any((x) => x.url!.contains('https://myanimelist.net/anime/21/One_Piece/episode/')), true);
    expect(result1.hasData, true);
  });

  test('should return an error', () async {
    expect(result2.response, null);
    expect(result2.hasError, true);
  });
}
