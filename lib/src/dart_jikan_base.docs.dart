import 'package:jikan_models/jikan_models.dart';

import 'utils/index.dart';

mixin JikanDocs {
  /// A single anime object with all its details.
  ///
  /// **Endpoint Path:** `/anime/{id}`
  /// ### Example
  /// ```dart
  /// var result = await jikanGetAnime(id: 21);
  /// var onepiece = result.response; // One Piece details
  ///
  /// // you can also check for an error before accessing the response.
  /// if (result.hasError) {
  ///   print(result.error.message);
  /// }
  /// ```
  /// If there's an error, the `.response` object will be null.
  ///
  JikanEndpoint<JikanAnimeDetails> get getAnime;

  /// List of episodes.
  ///
  /// **Endpoint Path:** `anime/{id}/episodes/{page}`
  /// ### Example
  /// ```dart
  /// var result = await jikanGetAnimeEpisodes(id: 21);
  /// var onepiece = result.response; // One Piece episodes on page #1
  ///
  /// // you can also check for an error before accessing the response.
  /// if (result.hasError) {
  ///   print(result.error.message);
  /// }
  /// ```
  /// If there's an error, the `.response` object will be null.
  /// #### Remarks
  /// - The response field `episodes_last_page` will tell you the last page of the paginated episodes list.
  /// - The episodes page on MyAnimeList get paginated after 100 episodes. If there's an anime with more than 100 episodes, you'll have to use the parameter `page` *(starts from `1`)*.
  JikanEndpointPage<JikanAnimeEpisodes> get getAnimeEpisodes;

  /// List of character and staff members.
  ///
  /// **Endpoint Path:** `/anime/{id}/characters_staff`
  /// ### Example
  /// ```dart
  /// var result = await jikanGetAnimeCharacterStaff(id: 21);
  /// var onepiece = result.response; // One Piece characters and staffs
  ///
  /// // you can also check for an error before accessing the response.
  /// if (result.hasError) {
  ///   print(result.error.message);
  /// }
  /// ```
  /// If there's an error, the `.response` object will be null.
  JikanEndpoint<JikanAnimeCharacterStaff> get getAnimeCharacterStaff;

  /// A single manga object with all its details.
  ///
  /// **Endpoint Path:** `/manga/{id}`
  /// ### Example
  /// ```dart
  /// var result = await jikanGetManga(id: 1517);
  /// var jojo = result.response; // JoJo Part 1 details
  ///
  /// // you can also check for an error before accessing the manga details.
  /// if (result.hasError) {
  ///   print(result.error.message);
  /// }
  /// ```
  /// If there's an error, the `.response` object will be null.
  JikanEndpoint<JikanMangaDetails> get getManga;
}
