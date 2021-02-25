import 'package:test/test.dart';

import '../../jikan.dart';
import '../../limit.dart';

Future<void> more_info() async {
  var result1 = await limit(jikan.getAnimeMoreInfo(animeId: 21));
  var result2 = await limit(jikan.getAnimeMoreInfo(animeId: 999999));

  test('should return more info about one piece', () async {
    expect(result1.response.moreinfo.contains('Episode 492 is the second part of a two part special called Toriko x One Piece Collabo Special - a crossover with Toriko (2011).'), true);
    expect(result1.hasData, true);
  });

  test('should return an error', () async {
    expect(result2.response, null);
    expect(result2.hasError, true);
  });
}
