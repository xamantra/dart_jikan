import '../models/manga/index.dart';
import '../utils/index.dart';

mixin JikanMangaDocs {
  /// A single manga object with all its details.
  ///
  /// **Endpoint Path:** `/manga/{id}`
  /// ### Example
  /// ```dart
  /// var result = await jikan.getManga(1517);
  /// var jojo = result.response; // JoJo Part 1 details
  /// ```
  JikanEndpoint<JikanMangaDetails> get getManga;
}
