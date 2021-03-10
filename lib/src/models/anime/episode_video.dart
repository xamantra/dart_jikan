import 'dart:convert';

class EpisodeVideo {
  EpisodeVideo({
    this.title,
    this.episode,
    this.url,
    this.imageUrl,
  });

  final String? title;
  final String? episode;
  final String? url;
  final String? imageUrl;

  EpisodeVideo copyWith({
    String? title,
    String? episode,
    String? url,
    String? imageUrl,
  }) =>
      EpisodeVideo(
        title: title ?? this.title,
        episode: episode ?? this.episode,
        url: url ?? this.url,
        imageUrl: imageUrl ?? this.imageUrl,
      );

  factory EpisodeVideo.fromRawJson(String str) => EpisodeVideo.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory EpisodeVideo.fromJson(Map<String, dynamic> json) => EpisodeVideo(
        title: json["title"] == null ? null : json["title"],
        episode: json["episode"] == null ? null : json["episode"],
        url: json["url"] == null ? null : json["url"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "episode": episode == null ? null : episode,
        "url": url == null ? null : url,
        "image_url": imageUrl == null ? null : imageUrl,
      };
}
