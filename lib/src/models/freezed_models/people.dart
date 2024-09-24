import 'package:freezed_annotation/freezed_annotation.dart';

part 'people.freezed.dart';
part 'people.g.dart';

@freezed
class People with _$People {
  const factory People({
    String? name,
    @JsonKey(name: 'birth_year') String? birthYear,
    @JsonKey(name: 'eye_color') String? eyeColor,
    String? gender,
    @JsonKey(name: 'hair_color') String? hairColor,
    String? homeWorld,
    String? height,
    String? mass,
    @JsonKey(name: 'skin_color') String? skinColor,
    @JsonKey(name: 'homeworld_id') int? homeWorldId,
    @JsonKey(name: 'species_id') int? speciesId,
    List<String>? films,
    List<String>? vehicles,
    List<String>? starships,
    List<String>? species,
  }) = _People;

  factory People.fromJson(Map<String, dynamic> json) => _$PeopleFromJson(json);
}

@freezed
class PeopleStarships with _$PeopleStarships {
  const factory PeopleStarships({
    required int peopleId,
    required int starshipId,
  }) = _PeopleStarships;

  factory PeopleStarships.fromJson(Map<String, dynamic> json) => _$PeopleStarshipsFromJson(json);
}

@freezed
class PeopleVehicles with _$PeopleVehicles {
  const factory PeopleVehicles({
    required int peopleId,
    required int vehicleId,
  }) = _PeopleVehicles;

  factory PeopleVehicles.fromJson(Map<String, dynamic> json) => _$PeopleVehiclesFromJson(json);
}

@freezed
class PeopleFilms with _$PeopleFilms {
  const factory PeopleFilms({
    required int peopleId,
    required int filmId,
  }) = _PeopleFilms;

  factory PeopleFilms.fromJson(Map<String, dynamic> json) => _$PeopleFilmsFromJson(json);
}