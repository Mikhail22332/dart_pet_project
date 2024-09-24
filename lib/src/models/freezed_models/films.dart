import 'package:freezed_annotation/freezed_annotation.dart';
part 'films.freezed.dart';
part 'films.g.dart';

@freezed
class FilmData  with _$FilmData  {
  const factory FilmData({
    String? title,
    @JsonKey(name: 'episode_id') int? episodeId,
    @JsonKey(name: 'opening_crawl') String? openingCrawl,
    String? director,
    String? producer,
    @JsonKey(name: 'release_date') String? releaseDate,
    List<String>? characters,
    List<String>? planets,
    List<String>? starships,
    List<String>? vehicles,
    List<String>? species,
  }) = _FilmData;

  factory FilmData .fromJson(Map<String, dynamic> json) => _$FilmDataFromJson(json);
}