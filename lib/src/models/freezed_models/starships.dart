import 'package:freezed_annotation/freezed_annotation.dart';

part 'starships.freezed.dart';
part 'starships.g.dart';

@freezed
class Starships with _$Starships {
  const factory Starships({
    String? name,
    String? model,
    String? manufacturer,
    @JsonKey(name: "cost_in_credits ") String? costInCredits,
    String? length,
    @JsonKey(name: "max_atmosphering_speed") String? maxAtmospheringSpeed,
    String? crew,
    String? passengers,
    @JsonKey(name: "cargo_capacity") String? cargoCapacity,
    String? consumables,
    @JsonKey(name: 'hyperdrive_rating') String? hyperDriveRating,
    @JsonKey(name: 'MGLT') String? mglt,
    @JsonKey(name: 'starship_class') String? starshipClass,
    List<String>? pilots,
    List<String>? films,
  }) = _Starships;

  factory Starships.fromJson(Map<String, dynamic> json) => _$StarshipsFromJson(json);
}

@freezed
class StarshipsFilms with _$StarshipsFilms {
  const factory StarshipsFilms({
    required int starshipId,
    required int filmId,
  }) = _StarshipsFilms;

  factory StarshipsFilms.fromJson(Map<String, dynamic> json) => _$StarshipsFilmsFromJson(json);
}
