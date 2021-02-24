import 'dart:convert';

class Episode {
  Episode({
    this.episodeId,
    this.title,
    this.titleJapanese,
    this.titleRomanji,
    this.aired,
    this.filler,
    this.recap,
    this.videoUrl,
    this.forumUrl,
  });

  final int episodeId;
  final String title;
  final String titleJapanese;
  final String titleRomanji;
  final DateTime aired;
  final bool filler;
  final bool recap;
  final String videoUrl;
  final String forumUrl;

  Episode copyWith({
    int episodeId,
    String title,
    String titleJapanese,
    String titleRomanji,
    DateTime aired,
    bool filler,
    bool recap,
    String videoUrl,
    String forumUrl,
  }) =>
      Episode(
        episodeId: episodeId ?? this.episodeId,
        title: title ?? this.title,
        titleJapanese: titleJapanese ?? this.titleJapanese,
        titleRomanji: titleRomanji ?? this.titleRomanji,
        aired: aired ?? this.aired,
        filler: filler ?? this.filler,
        recap: recap ?? this.recap,
        videoUrl: videoUrl ?? this.videoUrl,
        forumUrl: forumUrl ?? this.forumUrl,
      );

  factory Episode.fromRawJson(String str) => Episode.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Episode.fromJson(Map<String, dynamic> json) => Episode(
        episodeId: json["episode_id"] == null ? null : json["episode_id"],
        title: json["title"] == null ? null : json["title"],
        titleJapanese:
            json["title_japanese"] == null ? null : json["title_japanese"],
        titleRomanji:
            json["title_romanji"] == null ? null : json["title_romanji"],
        aired: json["aired"] == null ? null : DateTime.parse(json["aired"]),
        filler: json["filler"] == null ? null : json["filler"],
        recap: json["recap"] == null ? null : json["recap"],
        videoUrl: json["video_url"] == null ? null : json["video_url"],
        forumUrl: json["forum_url"] == null ? null : json["forum_url"],
      );

  Map<String, dynamic> toJson() => {
        "episode_id": episodeId == null ? null : episodeId,
        "title": title == null ? null : title,
        "title_japanese": titleJapanese == null ? null : titleJapanese,
        "title_romanji": titleRomanji == null ? null : titleRomanji,
        "aired": aired == null ? null : aired.toIso8601String(),
        "filler": filler == null ? null : filler,
        "recap": recap == null ? null : recap,
        "video_url": videoUrl == null ? null : videoUrl,
        "forum_url": forumUrl == null ? null : forumUrl,
      };
}
