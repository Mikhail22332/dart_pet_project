import 'package:dart_pet_project/src/models/freezed_models/vehicles.dart';
import 'package:dart_pet_project/src/utils/utils.dart';

import 'package:dart_pet_project/src/repositories/database.dart';

import 'base_data_saver.dart';


class VehiclesSaver extends BaseDataSaver<Vehicles>{

  VehiclesSaver(super.db);

  @override
  Future<void> fetchAndSave(List<Vehicles> items) async {
    for (var vehicle in items) {
      final vehicleId = await _saveVehicles(db, vehicle);
      await _saveVehicleFilms(db, vehicle, vehicleId);
    }
  }
}

Future<int> _saveVehicles(AppDatabase db, Vehicles vehicle) async {
  final vehicleId = await db.into(db.vehicles).insert(
    VehiclesCompanion.insert(
      name: vehicle.name ?? '',
      model: vehicle.model ?? '',
      vehicleClass: vehicle.vehicleClass ?? '',
      manufacturer: vehicle.manufacturer ?? '',
      length: vehicle.length ?? '',
      costInCredits: vehicle.costInCredits ?? '',
      crew: vehicle.crew ?? '',
      passengers: vehicle.passengers ?? '',
      maxAtmospheringSpeed: vehicle.maxAtmospheringSpeed ?? '',
      cargoCapacity: vehicle.cargoCapacity ?? '',
      consumables: vehicle.consumables ?? '',
    ),
  );
  return vehicleId;
}

Future<void> _saveVehicleFilms(AppDatabase db, Vehicles vehicle, int vehicleId) async {
  if (vehicle.films != null) {
    for (var filmUrl in vehicle.films!) {
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
