import 'dart:convert';

class ScoreVote {
  ScoreVote({
    this.votes,
    this.percentage,
  });

  final int votes;
  final double percentage;

  ScoreVote copyWith({
    int votes,
    double percentage,
  }) =>
      ScoreVote(
        votes: votes ?? this.votes,
        percentage: percentage ?? this.percentage,
      );

  factory ScoreVote.fromRawJson(String str) => ScoreVote.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ScoreVote.fromJson(Map<String, dynamic> json) => ScoreVote(
        votes: json["votes"] == null ? null : json["votes"],
        percentage: json["percentage"] == null ? null : json["percentage"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "votes": votes == null ? null : votes,
        "percentage": percentage == null ? null : percentage,
      };
}
