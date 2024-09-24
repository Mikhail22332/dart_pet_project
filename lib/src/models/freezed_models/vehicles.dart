import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicles.freezed.dart';
part 'vehicles.g.dart';

@freezed
class Vehicles with _$Vehicles {
  const factory Vehicles({
    String? name,
    String? model,
    String? manufacturer,
    @JsonKey(name: 'cost_in_credits') String? costInCredits,
    String? length,
    @JsonKey(name: 'max_atmosphering_speed') String? maxAtmospheringSpeed,
    String? crew,
    String? passengers,
    @JsonKey(name: 'cargo_capacity') String? cargoCapacity,
    String? consumables,
    @JsonKey(name: 'vehicle_class') String? vehicleClass,
    List<String>? pilots,
    List<String>? films,
  }) = _Vehicles;

  factory Vehicles.fromJson(Map<String, dynamic> json) => _$VehiclesFromJson(json);
}

@freezed
class VehiclesFilms with _$VehiclesFilms {
  const factory VehiclesFilms({
    required int vehicleId,
    required int filmId,
  }) = _VehiclesFilms;

  factory VehiclesFilms.fromJson(Map<String, dynamic> json) => _$VehiclesFilmsFromJson(json);
}