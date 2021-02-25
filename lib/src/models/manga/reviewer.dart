import 'dart:convert';

import 'index.dart';

class MangaReviewer {
  MangaReviewer({
    this.url,
    this.imageUrl,
    this.username,
    this.amountSeen,
    this.scores,
  });

  final String url;
  final String imageUrl;
  final String username;
  final int amountSeen;
  final MangaReviewScore scores;

  MangaReviewer copyWith({
    String url,
    String imageUrl,
    String username,
    int chaptersRead,
    MangaReviewScore scores,
  }) =>
      MangaReviewer(
        url: url ?? this.url,
        imageUrl: imageUrl ?? this.imageUrl,
        username: username ?? this.username,
        amountSeen: chaptersRead ?? this.amountSeen,
        scores: scores ?? this.scores,
      );

  factory MangaReviewer.fromRawJson(String str) => MangaReviewer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MangaReviewer.fromJson(Map<String, dynamic> json) => MangaReviewer(
        url: json["url"] == null ? null : json["url"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        username: json["username"] == null ? null : json["username"],
        amountSeen: json["chapters_read"] == null ? null : json["chapters_read"],
        scores: json["scores"] == null ? null : MangaReviewScore.fromJson(json["scores"]),
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "image_url": imageUrl == null ? null : imageUrl,
        "username": username == null ? null : username,
        "chapters_read": amountSeen == null ? null : amountSeen,
        "scores": scores == null ? null : scores.toJson(),
      };
}
