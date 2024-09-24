import 'package:freezed_annotation/freezed_annotation.dart';

part 'planets.freezed.dart';
part 'planets.g.dart';

@freezed
class Planets with _$Planets {
  const factory Planets({
    String? name,
    @JsonKey(name: 'rotation_period') String? rotationPeriod,
    @JsonKey(name: 'orbital_period') String? orbitalPeriod,
    String? diameter,
    String? climate,
    String? gravity,
    String? terrain,
    @JsonKey(name: 'surface_water') String? surfaceWater,
    String? population,
    List<String>? residents,
    List<String>? films,
  }) = _Planets;

  factory Planets.fromJson(Map<String, dynamic> json) => _$PlanetsFromJson(json);
}

@freezed
class PlanetsFilms with _$PlanetsFilms {
  const factory PlanetsFilms({
    required int planetId,
    required int filmId,
  }) = _PlanetsFilms;

  factory PlanetsFilms.fromJson(Map<String, dynamic> json) => _$PlanetsFilmsFromJson(json);
}

@freezed
class PlanetsPeople with _$PlanetsPeople {
  const factory PlanetsPeople({
    required int planetId,
    required int peopleId,
  }) = _PlanetsPeople;

  factory PlanetsPeople.fromJson(Map<String, dynamic> json) => _$PlanetsPeopleFromJson(json);
}