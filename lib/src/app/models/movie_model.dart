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
      imageUrl: map['poster_path'] as String,
      releaseDate: map['release_date'] as String,
      overview: map['overview'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieModel.fromJson(String source) =>
      MovieModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
