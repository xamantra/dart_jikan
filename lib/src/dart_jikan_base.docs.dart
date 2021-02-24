import 'models/anime/index.dart';
import 'models/manga/index.dart';
import 'utils/index.dart';

mixin JikanDocs {
  /// A single anime object with all its details.
  ///
  /// **Endpoint Path:** `/anime/{id}`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getAnime(id: 21);
  /// var onepiece = result.response; // One Piece details
  /// ```
  JikanEndpoint<JikanAnimeDetails> get getAnime;

  /// List of episodes.
  ///
  /// **Endpoint Path:** `anime/{id}/episodes/{page}`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getAnimeEpisodes(id: 21);
  /// var onepiece = result.response; // One Piece episodes on page #1
  /// ```
  /// #### Remarks
  /// - The response field `episodes_last_page` will tell you the last page of the paginated episodes list.
  /// - The episodes page on MyAnimeList get paginated after 100 episodes. If there's an anime with more than 100 episodes, you'll have to use the parameter `page` *(starts from `1`)*.
  JikanEndpointPage<JikanAnimeEpisodes> get getAnimeEpisodes;

  /// List of character and staff members.
  ///
  /// **Endpoint Path:** `/anime/{id}/characters_staff`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getAnimeCharacterStaff(id: 21);
  /// var onepiece = result.response; // One Piece characters and staffs
  /// ```
  JikanEndpoint<JikanAnimeCharacterStaff> get getAnimeCharacterStaff;

  /// List of anime related news.
  ///
  /// **Endpoint Path:** `/anime/{id}/news`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getAnimeNews(id: 21);
  /// var onepiece = result.response; // One Piece related news
  /// ```
  JikanEndpoint<JikanAnimeNews> get getAnimeNews;

  /// A single manga object with all its details.
  ///
  /// **Endpoint Path:** `/manga/{id}`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getManga(id: 1517);
  /// var jojo = result.response; // JoJo Part 1 details
  /// ```
  JikanEndpoint<JikanMangaDetails> get getManga;
}
