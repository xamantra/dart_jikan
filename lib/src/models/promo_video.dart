import 'dart:convert';

class PromoVideo {
  PromoVideo({
    this.title,
    this.imageUrl,
    this.videoUrl,
  });

  final String title;
  final String imageUrl;
  final String videoUrl;

  PromoVideo copyWith({
    String title,
    String imageUrl,
    String videoUrl,
  }) =>
      PromoVideo(
        title: title ?? this.title,
        imageUrl: imageUrl ?? this.imageUrl,
        videoUrl: videoUrl ?? this.videoUrl,
      );

  factory PromoVideo.fromRawJson(String str) =>
      PromoVideo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PromoVideo.fromJson(Map<String, dynamic> json) => PromoVideo(
        title: json["title"] == null ? null : json["title"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        videoUrl: json["video_url"] == null ? null : json["video_url"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "image_url": imageUrl == null ? null : imageUrl,
        "video_url": videoUrl == null ? null : videoUrl,
      };
}
