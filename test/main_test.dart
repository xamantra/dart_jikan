import 'endpoints/anime/index.dart';
import 'endpoints/manga/index.dart';
import 'utils/index.dart';

void main() async {
  await base_url();
  await anime_test();
  await manga_test();
}
