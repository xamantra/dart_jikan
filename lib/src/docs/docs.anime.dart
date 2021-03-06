mixin JikanAnimeDocs {
  /// A single anime object with all its details.
  ///
  /// **Endpoint Path:** `/anime/{id}`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getAnime(animeId: 21);
  /// var onepiece = result.response; // One Piece details
  /// ```
  getAnime({required int animeId});

  /// List of episodes.
  ///
  /// **Endpoint Path:** `anime/{id}/episodes/{page}`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getAnimeEpisodes(animeId: 21);
  /// var onepiece = result.response; // One Piece episodes on page #1
  /// ```
  /// #### Remarks
  /// - The response field `episodes_last_page` will tell you the last page of the paginated episodes list.
  /// - The episodes page on MyAnimeList get paginated after 100 episodes. If there's an anime with more than 100 episodes, you'll have to use the parameter `page` *(starts from `1`)*.
  getAnimeEpisodes({required int animeId});

  /// List of character and staff members.
  ///
  /// **Endpoint Path:** `/anime/{id}/characters_staff`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getAnimeCharacterStaff(animeId: 21);
  /// var onepiece = result.response; // One Piece characters and staffs
  /// ```
  getAnimeCharacterStaff({required int animeId});

  /// List of Related news
  ///
  /// **Endpoint Path:** `/anime/{id}/news`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getAnimeNews(animeId: 21);
  /// var onepiece = result.response; // One Piece related news
  /// ```
  getAnimeNews({required int animeId});

  /// List of Related pictures
  ///
  /// **Endpoint Path:** `/anime/{id}/pictures`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getAnimePictures(animeId: 21);
  /// var onepiece = result.response; // One Piece pictures
  /// ```
  getAnimePictures({required int animeId});

  /// List of Promotional Videos & episodes (if any)
  ///
  /// **Endpoint Path:** `/anime/{id}/videos`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getAnimeVideos(animeId: 21);
  /// var onepiece = result.response; // One Piece videos and episodes
  /// ```
  getAnimeVideos({required int animeId});

  /// Related statistical information
  ///
  /// **Endpoint Path:** `/anime/{id}/stats`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getAnimeStats(animeId: 21);
  /// var onepiece = result.response; // One Piece statistics
  /// ```
  getAnimeStats({required int animeId});

  /// List of Related forum topics
  ///
  /// **Endpoint Path:** `/anime/{id}/forum`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getAnimeForum(animeId: 21);
  /// var onepiece = result.response; // One Piece related forum topics
  /// ```
  getAnimeForum({required int animeId});

  /// A string of more information (if any)
  ///
  /// **Endpoint Path:** `/anime/{id}/moreinfo`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getAnimeMoreInfo(animeId: 21);
  /// var onepiece = result.response; // more info about one piece.
  /// ```
  getAnimeMoreInfo({required int animeId});

  /// List of Reviews written by users
  ///
  /// **Endpoint Path:** `/anime/{id}/reviews`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getAnimeReviews(animeId: 21);
  /// var onepiece = result.response; // one piece reviews.
  /// ```
  getAnimeReviews({required int animeId});

  /// List of Recommendations and their weightage made by users
  ///
  /// **Endpoint Path:** `/anime/{id}/recommendations`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getAnimeRecommendations(animeId: 21);
  /// var onepiece = result.response; // one piece recommendations.
  /// ```
  getAnimeRecommendations({required int animeId});

  /// List of the latest list updates made by users
  ///
  /// **Endpoint Path:** `/anime/{id}/userupdates`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getAnimeUserUpdates(animeId: 21);
  /// var onepiece = result.response; // one piece user updates.
  /// ```
  getAnimeUserUpdates({required int animeId});
}
