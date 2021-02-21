import 'dart:convert';

import 'package:meta/meta.dart';

import '../index.dart';

class JikanAnimeDetails {
  JikanAnimeDetails({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    this.malId,
    this.url,
    this.imageUrl,
    this.trailerUrl,
    this.title,
    this.titleEnglish,
    this.titleJapanese,
    this.titleSynonyms,
    this.type,
    this.source,
    this.episodes,
    this.status,
    this.airing,
    this.aired,
    this.duration,
    this.rating,
    this.score,
    this.scoredBy,
    this.rank,
    this.popularity,
    this.members,
    this.favorites,
    this.synopsis,
    this.background,
    this.premiered,
    this.broadcast,
    this.related,
    this.producers,
    this.licensors,
    this.studios,
    this.genres,
    this.openingThemes,
    this.endingThemes,
  });

  final String requestHash;
  final bool requestCached;
  final int requestCacheExpiry;
  final int malId;
  final String url;
  final String imageUrl;
  final String trailerUrl;
  final String title;
  final String titleEnglish;
  final String titleJapanese;
  final List<String> titleSynonyms;
  final String type;
  final String source;
  final int episodes;
  final String status;
  final bool airing;
  final ReleaseDate aired;
  final String duration;
  final String rating;
  final double score;
  final int scoredBy;
  final int rank;
  final int popularity;
  final int members;
  final int favorites;
  final String synopsis;
  final String background;
  final String premiered;
  final String broadcast;
  final Related related;
  final List<EntryDataItem> producers;
  final List<EntryDataItem> licensors;
  final List<EntryDataItem> studios;
  final List<EntryDataItem> genres;
  final List<String> openingThemes;
  final List<String> endingThemes;

  JikanAnimeDetails copyWith({
    @required String requestHash,
    @required bool requestCached,
    @required int requestCacheExpiry,
    @required int malId,
    @required String url,
    @required String imageUrl,
    @required String trailerUrl,
    @required String title,
    @required String titleEnglish,
    @required String titleJapanese,
    @required List<String> titleSynonyms,
    @required String type,
    @required String source,
    @required int episodes,
    @required String status,
    @required bool airing,
    @required ReleaseDate aired,
    @required String duration,
    @required String rating,
    @required double score,
    @required int scoredBy,
    @required int rank,
    @required int popularity,
    @required int members,
    @required int favorites,
    @required String synopsis,
    @required String background,
    @required String premiered,
    @required String broadcast,
    @required Related related,
    @required List<EntryDataItem> producers,
    @required List<EntryDataItem> licensors,
    @required List<EntryDataItem> studios,
    @required List<EntryDataItem> genres,
    @required List<String> openingThemes,
    @required List<String> endingThemes,
  }) =>
      JikanAnimeDetails(
        requestHash: requestHash ?? this.requestHash,
        requestCached: requestCached ?? this.requestCached,
        requestCacheExpiry: requestCacheExpiry ?? this.requestCacheExpiry,
        malId: malId ?? this.malId,
        url: url ?? this.url,
        imageUrl: imageUrl ?? this.imageUrl,
        trailerUrl: trailerUrl ?? this.trailerUrl,
        title: title ?? this.title,
        titleEnglish: titleEnglish ?? this.titleEnglish,
        titleJapanese: titleJapanese ?? this.titleJapanese,
        titleSynonyms: titleSynonyms ?? this.titleSynonyms,
        type: type ?? this.type,
        source: source ?? this.source,
        episodes: episodes ?? this.episodes,
        status: status ?? this.status,
        airing: airing ?? this.airing,
        aired: aired ?? this.aired,
        duration: duration ?? this.duration,
        rating: rating ?? this.rating,
        score: score ?? this.score,
        scoredBy: scoredBy ?? this.scoredBy,
        rank: rank ?? this.rank,
        popularity: popularity ?? this.popularity,
        members: members ?? this.members,
        favorites: favorites ?? this.favorites,
        synopsis: synopsis ?? this.synopsis,
        background: background ?? this.background,
        premiered: premiered ?? this.premiered,
        broadcast: broadcast ?? this.broadcast,
        related: related ?? this.related,
        producers: producers ?? this.producers,
        licensors: licensors ?? this.licensors,
        studios: studios ?? this.studios,
        genres: genres ?? this.genres,
        openingThemes: openingThemes ?? this.openingThemes,
        endingThemes: endingThemes ?? this.endingThemes,
      );

  factory JikanAnimeDetails.fromRawJson(String str) => JikanAnimeDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory JikanAnimeDetails.fromJson(Map<String, dynamic> json) => JikanAnimeDetails(
        requestHash: json["request_hash"] == null ? null : json["request_hash"],
        requestCached: json["request_cached"] == null ? null : json["request_cached"],
        requestCacheExpiry: json["request_cache_expiry"] == null ? null : json["request_cache_expiry"],
        malId: json["mal_id"] == null ? null : json["mal_id"],
        url: json["url"] == null ? null : json["url"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        trailerUrl: json["trailer_url"] == null ? null : json["trailer_url"],
        title: json["title"] == null ? null : json["title"],
        titleEnglish: json["title_english"] == null ? null : json["title_english"],
        titleJapanese: json["title_japanese"] == null ? null : json["title_japanese"],
        titleSynonyms: json["title_synonyms"] == null ? null : List<String>.from(json["title_synonyms"].map((x) => x)),
        type: json["type"] == null ? null : json["type"],
        source: json["source"] == null ? null : json["source"],
        episodes: json["episodes"] == null ? null : json["episodes"],
        status: json["status"] == null ? null : json["status"],
        airing: json["airing"] == null ? null : json["airing"],
        aired: json["aired"] == null ? null : ReleaseDate.fromJson(json["aired"]),
        duration: json["duration"] == null ? null : json["duration"],
        rating: json["rating"] == null ? null : json["rating"],
        score: json["score"] == null ? null : json["score"].toDouble(),
        scoredBy: json["scored_by"] == null ? null : json["scored_by"],
        rank: json["rank"] == null ? null : json["rank"],
        popularity: json["popularity"] == null ? null : json["popularity"],
        members: json["members"] == null ? null : json["members"],
        favorites: json["favorites"] == null ? null : json["favorites"],
        synopsis: json["synopsis"] == null ? null : json["synopsis"],
        background: json["background"] == null ? null : json["background"],
        premiered: json["premiered"] == null ? null : json["premiered"],
        broadcast: json["broadcast"] == null ? null : json["broadcast"],
        related: json["related"] == null ? null : Related.fromJson(json["related"]),
        producers: json["producers"] == null ? null : List<EntryDataItem>.from(json["producers"].map((x) => EntryDataItem.fromJson(x))),
        licensors: json["licensors"] == null ? null : List<EntryDataItem>.from(json["licensors"].map((x) => EntryDataItem.fromJson(x))),
        studios: json["studios"] == null ? null : List<EntryDataItem>.from(json["studios"].map((x) => EntryDataItem.fromJson(x))),
        genres: json["genres"] == null ? null : List<EntryDataItem>.from(json["genres"].map((x) => EntryDataItem.fromJson(x))),
        openingThemes: json["opening_themes"] == null ? null : List<String>.from(json["opening_themes"].map((x) => x)),
        endingThemes: json["ending_themes"] == null ? null : List<String>.from(json["ending_themes"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "request_hash": requestHash == null ? null : requestHash,
        "request_cached": requestCached == null ? null : requestCached,
        "request_cache_expiry": requestCacheExpiry == null ? null : requestCacheExpiry,
        "mal_id": malId == null ? null : malId,
        "url": url == null ? null : url,
        "image_url": imageUrl == null ? null : imageUrl,
        "trailer_url": trailerUrl == null ? null : trailerUrl,
        "title": title == null ? null : title,
        "title_english": titleEnglish == null ? null : titleEnglish,
        "title_japanese": titleJapanese == null ? null : titleJapanese,
        "title_synonyms": titleSynonyms == null ? null : List<dynamic>.from(titleSynonyms.map((x) => x)),
        "type": type == null ? null : type,
        "source": source == null ? null : source,
        "episodes": episodes == null ? null : episodes,
        "status": status == null ? null : status,
        "airing": airing == null ? null : airing,
        "aired": aired == null ? null : aired.toJson(),
        "duration": duration == null ? null : duration,
        "rating": rating == null ? null : rating,
        "score": score == null ? null : score,
        "scored_by": scoredBy == null ? null : scoredBy,
        "rank": rank == null ? null : rank,
        "popularity": popularity == null ? null : popularity,
        "members": members == null ? null : members,
        "favorites": favorites == null ? null : favorites,
        "synopsis": synopsis == null ? null : synopsis,
        "background": background == null ? null : background,
        "premiered": premiered == null ? null : premiered,
        "broadcast": broadcast == null ? null : broadcast,
        "related": related == null ? null : related.toJson(),
        "producers": producers == null ? null : List<dynamic>.from(producers.map((x) => x.toJson())),
        "licensors": licensors == null ? null : List<dynamic>.from(licensors.map((x) => x.toJson())),
        "studios": studios == null ? null : List<dynamic>.from(studios.map((x) => x.toJson())),
        "genres": genres == null ? null : List<dynamic>.from(genres.map((x) => x.toJson())),
        "opening_themes": openingThemes == null ? null : List<dynamic>.from(openingThemes.map((x) => x)),
        "ending_themes": endingThemes == null ? null : List<dynamic>.from(endingThemes.map((x) => x)),
      };
}
