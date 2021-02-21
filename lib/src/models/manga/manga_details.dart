import 'dart:convert';

import '../index.dart';

class JikanMangaDetails {
  JikanMangaDetails({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    this.malId,
    this.url,
    this.title,
    this.titleEnglish,
    this.titleSynonyms,
    this.titleJapanese,
    this.status,
    this.imageUrl,
    this.type,
    this.volumes,
    this.chapters,
    this.publishing,
    this.published,
    this.rank,
    this.score,
    this.scoredBy,
    this.popularity,
    this.members,
    this.favorites,
    this.synopsis,
    this.background,
    this.related,
    this.genres,
    this.authors,
    this.serializations,
  });

  final String requestHash;
  final bool requestCached;
  final int requestCacheExpiry;
  final int malId;
  final String url;
  final String title;
  final String titleEnglish;
  final List<String> titleSynonyms;
  final String titleJapanese;
  final String status;
  final String imageUrl;
  final String type;
  final int volumes;
  final int chapters;
  final bool publishing;
  final ReleaseDate published;
  final int rank;
  final double score;
  final int scoredBy;
  final int popularity;
  final int members;
  final int favorites;
  final String synopsis;
  final String background;
  final Related related;
  final List<EntryDataItem> genres;
  final List<EntryDataItem> authors;
  final List<EntryDataItem> serializations;

  JikanMangaDetails copyWith({
    String requestHash,
    bool requestCached,
    int requestCacheExpiry,
    int malId,
    String url,
    String title,
    String titleEnglish,
    List<String> titleSynonyms,
    String titleJapanese,
    String status,
    String imageUrl,
    String type,
    int volumes,
    int chapters,
    bool publishing,
    ReleaseDate published,
    int rank,
    double score,
    int scoredBy,
    int popularity,
    int members,
    int favorites,
    String synopsis,
    String background,
    Related related,
    List<EntryDataItem> genres,
    List<EntryDataItem> authors,
    List<EntryDataItem> serializations,
  }) =>
      JikanMangaDetails(
        requestHash: requestHash ?? this.requestHash,
        requestCached: requestCached ?? this.requestCached,
        requestCacheExpiry: requestCacheExpiry ?? this.requestCacheExpiry,
        malId: malId ?? this.malId,
        url: url ?? this.url,
        title: title ?? this.title,
        titleEnglish: titleEnglish ?? this.titleEnglish,
        titleSynonyms: titleSynonyms ?? this.titleSynonyms,
        titleJapanese: titleJapanese ?? this.titleJapanese,
        status: status ?? this.status,
        imageUrl: imageUrl ?? this.imageUrl,
        type: type ?? this.type,
        volumes: volumes ?? this.volumes,
        chapters: chapters ?? this.chapters,
        publishing: publishing ?? this.publishing,
        published: published ?? this.published,
        rank: rank ?? this.rank,
        score: score ?? this.score,
        scoredBy: scoredBy ?? this.scoredBy,
        popularity: popularity ?? this.popularity,
        members: members ?? this.members,
        favorites: favorites ?? this.favorites,
        synopsis: synopsis ?? this.synopsis,
        background: background ?? this.background,
        related: related ?? this.related,
        genres: genres ?? this.genres,
        authors: authors ?? this.authors,
        serializations: serializations ?? this.serializations,
      );

  factory JikanMangaDetails.fromRawJson(String str) => JikanMangaDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory JikanMangaDetails.fromJson(Map<String, dynamic> json) => JikanMangaDetails(
        requestHash: json["request_hash"] == null ? null : json["request_hash"],
        requestCached: json["request_cached"] == null ? null : json["request_cached"],
        requestCacheExpiry: json["request_cache_expiry"] == null ? null : json["request_cache_expiry"],
        malId: json["mal_id"] == null ? null : json["mal_id"],
        url: json["url"] == null ? null : json["url"],
        title: json["title"] == null ? null : json["title"],
        titleEnglish: json["title_english"] == null ? null : json["title_english"],
        titleSynonyms: json["title_synonyms"] == null ? null : List<String>.from(json["title_synonyms"].map((x) => x)),
        titleJapanese: json["title_japanese"] == null ? null : json["title_japanese"],
        status: json["status"] == null ? null : json["status"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        type: json["type"] == null ? null : json["type"],
        volumes: json["volumes"] == null ? null : json["volumes"],
        chapters: json["chapters"] == null ? null : json["chapters"],
        publishing: json["publishing"] == null ? null : json["publishing"],
        published: json["published"] == null ? null : ReleaseDate.fromJson(json["published"]),
        rank: json["rank"] == null ? null : json["rank"],
        score: json["score"] == null ? null : json["score"].toDouble(),
        scoredBy: json["scored_by"] == null ? null : json["scored_by"],
        popularity: json["popularity"] == null ? null : json["popularity"],
        members: json["members"] == null ? null : json["members"],
        favorites: json["favorites"] == null ? null : json["favorites"],
        synopsis: json["synopsis"] == null ? null : json["synopsis"],
        background: json["background"] == null ? null : json["background"],
        related: json["related"] == null ? null : Related.fromJson(json["related"]),
        genres: json["genres"] == null ? null : List<EntryDataItem>.from(json["genres"].map((x) => EntryDataItem.fromJson(x))),
        authors: json["authors"] == null ? null : List<EntryDataItem>.from(json["authors"].map((x) => EntryDataItem.fromJson(x))),
        serializations: json["serializations"] == null ? null : List<EntryDataItem>.from(json["serializations"].map((x) => EntryDataItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "request_hash": requestHash == null ? null : requestHash,
        "request_cached": requestCached == null ? null : requestCached,
        "request_cache_expiry": requestCacheExpiry == null ? null : requestCacheExpiry,
        "mal_id": malId == null ? null : malId,
        "url": url == null ? null : url,
        "title": title == null ? null : title,
        "title_english": titleEnglish == null ? null : titleEnglish,
        "title_synonyms": titleSynonyms == null ? null : List<dynamic>.from(titleSynonyms.map((x) => x)),
        "title_japanese": titleJapanese == null ? null : titleJapanese,
        "status": status == null ? null : status,
        "image_url": imageUrl == null ? null : imageUrl,
        "type": type == null ? null : type,
        "volumes": volumes == null ? null : volumes,
        "chapters": chapters == null ? null : chapters,
        "publishing": publishing == null ? null : publishing,
        "published": published == null ? null : published.toJson(),
        "rank": rank == null ? null : rank,
        "score": score == null ? null : score,
        "scored_by": scoredBy == null ? null : scoredBy,
        "popularity": popularity == null ? null : popularity,
        "members": members == null ? null : members,
        "favorites": favorites == null ? null : favorites,
        "synopsis": synopsis == null ? null : synopsis,
        "background": background == null ? null : background,
        "related": related == null ? null : related.toJson(),
        "genres": genres == null ? null : List<dynamic>.from(genres.map((x) => x.toJson())),
        "authors": authors == null ? null : List<dynamic>.from(authors.map((x) => x.toJson())),
        "serializations": serializations == null ? null : List<dynamic>.from(serializations.map((x) => x.toJson())),
      };
}
