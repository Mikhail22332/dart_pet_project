import 'package:freezed_annotation/freezed_annotation.dart';

part 'species.freezed.dart';
part 'species.g.dart';

@freezed
class Species with _$Species {
  const factory Species({
    String? name,
    String? classification,
    String? designation,
    @JsonKey(name: 'average_height') String? averageHeight,
    @JsonKey(name: 'skin_colors') String? skinColors,
    @JsonKey(name: 'hair_colors') String? hairColors,
    @JsonKey(name: 'eye_colors') String? eyeColors,
    @JsonKey(name: 'average_lifespan') String? averageLifespan,
    String? homeworld,
    String? language,
    List<String>? people,
    List<String>? films,
  }) = _Species;

  factory Species.fromJson(Map<String, dynamic> json) => _$SpeciesFromJson(json);
}

@freezed
class SpeciesFilms with _$SpeciesFilms {
  const factory SpeciesFilms({
    required int speciesId,
    required int filmId,
  }) = _SpeciesFilms;

  factory SpeciesFilms.fromJson(Map<String, dynamic> json) => _$SpeciesFilmsFromJson(json);
}