import 'dart:convert';

class AnimeReviewScore {
  AnimeReviewScore({
    this.overall,
    this.story,
    this.animation,
    this.sound,
    this.character,
    this.enjoyment,
  });

  final int overall;
  final int story;
  final int animation;
  final int sound;
  final int character;
  final int enjoyment;

  AnimeReviewScore copyWith({
    int overall,
    int story,
    int animation,
    int sound,
    int character,
    int enjoyment,
  }) =>
      AnimeReviewScore(
        overall: overall ?? this.overall,
        story: story ?? this.story,
        animation: animation ?? this.animation,
        sound: sound ?? this.sound,
        character: character ?? this.character,
        enjoyment: enjoyment ?? this.enjoyment,
      );

  factory AnimeReviewScore.fromRawJson(String str) => AnimeReviewScore.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AnimeReviewScore.fromJson(Map<String, dynamic> json) => AnimeReviewScore(
        overall: json["overall"] == null ? null : json["overall"],
        story: json["story"] == null ? null : json["story"],
        animation: json["animation"] == null ? null : json["animation"],
        sound: json["sound"] == null ? null : json["sound"],
        character: json["character"] == null ? null : json["character"],
        enjoyment: json["enjoyment"] == null ? null : json["enjoyment"],
      );

  Map<String, dynamic> toJson() => {
        "overall": overall == null ? null : overall,
        "story": story == null ? null : story,
        "animation": animation == null ? null : animation,
        "sound": sound == null ? null : sound,
        "character": character == null ? null : character,
        "enjoyment": enjoyment == null ? null : enjoyment,
      };
}
