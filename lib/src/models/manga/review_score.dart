import 'dart:convert';

class MangaReviewScore {
  MangaReviewScore({
    this.overall,
    this.story,
    this.art,
    this.character,
    this.enjoyment,
  });

  final int? overall;
  final int? story;
  final int? art;
  final int? character;
  final int? enjoyment;

  MangaReviewScore copyWith({
    int? overall,
    int? story,
    int? art,
    int? character,
    int? enjoyment,
  }) =>
      MangaReviewScore(
        overall: overall ?? this.overall,
        story: story ?? this.story,
        art: art ?? this.art,
        character: character ?? this.character,
        enjoyment: enjoyment ?? this.enjoyment,
      );

  factory MangaReviewScore.fromRawJson(String str) => MangaReviewScore.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory MangaReviewScore.fromJson(Map<String, dynamic> json) => MangaReviewScore(
        overall: json["overall"] == null ? null : json["overall"],
        story: json["story"] == null ? null : json["story"],
        art: json["art"] == null ? null : json["art"],
        character: json["character"] == null ? null : json["character"],
        enjoyment: json["enjoyment"] == null ? null : json["enjoyment"],
      );

  Map<String, dynamic> toJson() => {
        "overall": overall == null ? null : overall,
        "story": story == null ? null : story,
        "art": art == null ? null : art,
        "character": character == null ? null : character,
        "enjoyment": enjoyment == null ? null : enjoyment,
      };
}
