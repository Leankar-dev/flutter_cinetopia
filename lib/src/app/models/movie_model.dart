// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MovieModel {
  final int id;
  final String title;
  final String imageUrl;
  final String releaseDate;
  final String overview;

  MovieModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.releaseDate,
    required this.overview,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'releaseDate': releaseDate,
      'overview': overview,
    };
  }

  factory MovieModel.fromMap(Map<String, dynamic> map) {
    return MovieModel(
      id: map['id'] as int,
      title: map['title'] as String,
      imageUrl: map['imageUrl'] as String,
      releaseDate: map['releaseDate'] as String,
      overview: map['overview'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieModel.fromJson(String source) =>
      MovieModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
