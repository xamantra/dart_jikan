mixin JikanMangaDocs {
  /// A single manga object with all its details.
  ///
  /// **Endpoint Path:** `/manga/{id}`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getManga(mangaId: 1517);
  /// var jojo = result.response; // JoJo Part 1 details
  /// ```
  getManga({required int mangaId});
}
