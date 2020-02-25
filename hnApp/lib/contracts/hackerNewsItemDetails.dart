// To parse this JSON data, do
//
//     final hackerNewsItemDetails = hackerNewsItemDetailsFromJson(jsonString);

import 'dart:convert';

class HackerNewsItemDetails {
  String by;
  int descendants;
  int id;
  List<int> kids;
  int score;
  int time;
  String title;
  String type;
  String url;

  HackerNewsItemDetails({
    this.by,
    this.descendants,
    this.id,
    this.kids,
    this.score,
    this.time,
    this.title,
    this.type,
    this.url,
  });

  factory HackerNewsItemDetails.fromRawJson(String str) =>
      HackerNewsItemDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HackerNewsItemDetails.fromJson(Map<String, dynamic> json) =>
      HackerNewsItemDetails(
        by: json["by"],
        descendants: json["descendants"],
        id: json["id"],
        kids: List<int>.from(json["kids"].map((x) => x)),
        score: json["score"],
        time: json["time"],
        title: json["title"],
        type: json["type"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "by": by,
        "descendants": descendants,
        "id": id,
        "kids": List<dynamic>.from(kids.map((x) => x)),
        "score": score,
        "time": time,
        "title": title,
        "type": type,
        "url": url,
      };
}
