import 'package:dart_pet_project/src/utils/utils.dart';

import 'package:dart_pet_project/src/repositories/database.dart';

/// Fetches and saves vehicle data along with associated films.
///
/// [db]: The AppDatabase instance.
/// [results]: A list of dynamic objects representing vehicle data.
Future<void> fetchAndSaveVehicles(AppDatabase db,List<dynamic> results) async {

    for (var result in results) {
      final vehicleId = await saveVehicles(db, result);
      await saveVehicleFilms(db, result, vehicleId);
    }
}

/// Saves vehicle data into the database and returns the inserted vehicle ID.
///
/// [db]: The AppDatabase instance.
/// [result]: A map containing vehicle data.
///
/// Returns the ID of the inserted vehicle.
Future<int> saveVehicles(AppDatabase db, Map<String, dynamic> result) async {
  final vehicleId = await db.into(db.vehicles).insert(
    VehiclesCompanion.insert(
      name: result['name'],
      model: result['model'],
      vehicleClass: result['vehicle_class'],
      manufacturer: result['manufacturer'],
      length: result['length'],
      costInCredits: result['cost_in_credits'],
      crew: result['crew'],
      passengers: result['passengers'],
      maxAtmospheringSpeed: result['max_atmosphering_speed'],
      cargoCapacity: result['cargo_capacity'],
      consumables: result['consumables'],
    ),
  );
  return vehicleId;
}

/// Saves the association between a vehicle and its films in the VehiclesFilms table.
///
/// [db]: The AppDatabase instance.
/// [result]: A map containing vehicle data.
/// [vehicleId]: The ID of the vehicle.
Future<void> saveVehicleFilms(AppDatabase db, Map<String, dynamic> result, int vehicleId) async {
  if (result['films'] != null) {
    for (var filmUrl in result['films']) {
      final filmId = extractIdFromUrl(filmUrl);

      if (filmId != null) {
        await db.into(db.vehiclesFilms).insert(
          VehiclesFilmsCompanion.insert(
            vehicleId: vehicleId,
            filmId: filmId,
          ),
        );
      }
    }
  }
}
