import 'package:new_app/models/sourceResponse/Source.dart';

/// source : {"id":"fox-sports","name":"Fox Sports"}
/// author : null
/// title : "2025 Sweet 16: Bracket, schedule, locations, teams"
/// description : "Checkout everything you need to know about the 2025 Sweet 16 including schedule, bracket, TV and more"
/// url : "https://www.foxsports.com/stories/college-basketball/2025-sweet-16-bracket-schedule-locations-teams"
/// urlToImage : "https://a57.foxsports.com/statics.foxsports.com/www.foxsports.com/content/uploads/2025/03/1408/814/cooper-flagg-johni-broome.jpg?ve=1&tl=1"
/// publishedAt : "2025-03-24T11:56:43Z"
/// content : "The opening weekend of the 2025 March Madness tournament was full of incredible moments, thrilling finishes and upsets. Now we are moving to the Sweet 16 with a bunch of college basketball blue blood… [+1070 chars]"

class Article {
  Article({
      this.source, 
      this.author, 
      this.title, 
      this.description, 
      this.url, 
      this.urlToImage, 
      this.publishedAt, 
      this.content,});

  Article.fromJson(dynamic json) {
    source = json['source'] != null ? Source.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }
  Source? source;
  dynamic author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (source != null) {
      map['source'] = source?.toJson();
    }
    map['author'] = author;
    map['title'] = title;
    map['description'] = description;
    map['url'] = url;
    map['urlToImage'] = urlToImage;
    map['publishedAt'] = publishedAt;
    map['content'] = content;
    return map;
  }

}