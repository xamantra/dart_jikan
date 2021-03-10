import 'dart:convert';

class UserAnimeUpdate {
  UserAnimeUpdate({
    this.username,
    this.url,
    this.imageUrl,
    this.score,
    this.status,
    this.episodesSeen,
    this.episodesTotal,
    this.date,
  });

  final String? username;
  final String? url;
  final String? imageUrl;
  final int? score;
  final String? status;
  final int? episodesSeen;
  final int? episodesTotal;
  final DateTime? date;

  UserAnimeUpdate copyWith({
    String? username,
    String? url,
    String? imageUrl,
    int? score,
    String? status,
    int? episodesSeen,
    int? episodesTotal,
    DateTime? date,
  }) =>
      UserAnimeUpdate(
        username: username ?? this.username,
        url: url ?? this.url,
        imageUrl: imageUrl ?? this.imageUrl,
        score: score ?? this.score,
        status: status ?? this.status,
        episodesSeen: episodesSeen ?? this.episodesSeen,
        episodesTotal: episodesTotal ?? this.episodesTotal,
        date: date ?? this.date,
      );

  factory UserAnimeUpdate.fromRawJson(String str) => UserAnimeUpdate.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory UserAnimeUpdate.fromJson(Map<String, dynamic> json) => UserAnimeUpdate(
        username: json["username"] == null ? null : json["username"],
        url: json["url"] == null ? null : json["url"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        score: json["score"] == null ? null : json["score"],
        status: json["status"] == null ? null : json["status"],
        episodesSeen: json["episodes_seen"] == null ? null : json["episodes_seen"],
        episodesTotal: json["episodes_total"] == null ? null : json["episodes_total"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
      );

  Map<String, dynamic> toJson() => {
        "username": username == null ? null : username,
        "url": url == null ? null : url,
        "image_url": imageUrl == null ? null : imageUrl,
        "score": score == null ? null : score,
        "status": status == null ? null : status,
        "episodes_seen": episodesSeen == null ? null : episodesSeen,
        "episodes_total": episodesTotal == null ? null : episodesTotal,
        "date": date == null ? null : date!.toIso8601String(),
      };
}
