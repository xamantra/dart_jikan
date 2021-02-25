import 'dart:convert';

import 'index.dart';

class ForumTopic {
  ForumTopic({
    this.topicId,
    this.url,
    this.title,
    this.datePosted,
    this.authorName,
    this.authorUrl,
    this.replies,
    this.lastPost,
  });

  final int topicId;
  final String url;
  final String title;
  final DateTime datePosted;
  final String authorName;
  final String authorUrl;
  final int replies;
  final ForumTopicLastPost lastPost;

  ForumTopic copyWith({
    int topicId,
    String url,
    String title,
    DateTime datePosted,
    String authorName,
    String authorUrl,
    int replies,
    ForumTopicLastPost lastPost,
  }) =>
      ForumTopic(
        topicId: topicId ?? this.topicId,
        url: url ?? this.url,
        title: title ?? this.title,
        datePosted: datePosted ?? this.datePosted,
        authorName: authorName ?? this.authorName,
        authorUrl: authorUrl ?? this.authorUrl,
        replies: replies ?? this.replies,
        lastPost: lastPost ?? this.lastPost,
      );

  factory ForumTopic.fromRawJson(String str) => ForumTopic.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ForumTopic.fromJson(Map<String, dynamic> json) => ForumTopic(
        topicId: json["topic_id"] == null ? null : json["topic_id"],
        url: json["url"] == null ? null : json["url"],
        title: json["title"] == null ? null : json["title"],
        datePosted: json["date_posted"] == null ? null : DateTime.parse(json["date_posted"]),
        authorName: json["author_name"] == null ? null : json["author_name"],
        authorUrl: json["author_url"] == null ? null : json["author_url"],
        replies: json["replies"] == null ? null : json["replies"],
        lastPost: json["last_post"] == null ? null : ForumTopicLastPost.fromJson(json["last_post"]),
      );

  Map<String, dynamic> toJson() => {
        "topic_id": topicId == null ? null : topicId,
        "url": url == null ? null : url,
        "title": title == null ? null : title,
        "date_posted": datePosted == null ? null : datePosted.toIso8601String(),
        "author_name": authorName == null ? null : authorName,
        "author_url": authorUrl == null ? null : authorUrl,
        "replies": replies == null ? null : replies,
        "last_post": lastPost == null ? null : lastPost.toJson(),
      };
}
