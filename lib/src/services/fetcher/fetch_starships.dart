import 'package:dart_pet_project/src/models/freezed_models/starships.dart';
import 'package:dart_pet_project/src/services/fetcher/base_data_saver.dart';
import 'package:dart_pet_project/src/utils/utils.dart';

import 'package:dart_pet_project/src/repositories/database.dart';
import 'package:drift/drift.dart';


class StarshipsSaver extends BaseDataSaver<Starships>{

  StarshipsSaver(super.db);

  @override
  Future<void> fetchAndSave(List<Starships> items) async {
    for (var starship in items) {
      final int starshipId = await _saveStarship(db, starship);
      await _saveStarshipFilms(db, starship, starshipId);
    }
  }
}

Future<int> _saveStarship(AppDatabase db, Starships starship) async {
  final starshipId = await db.into(db.starships).insert(
    StarshipsCompanion.insert(
        name: starship.name ?? '',
        model: starship.model ?? '',
        starshipClass: starship.starshipClass ?? '',
        manufacturer: starship.manufacturer ?? '',
        costInCredits: starship.costInCredits ?? '',
        length: Value(starship.length),
        crew: Value(starship.crew),
        passengers: starship.passengers ?? '',
        maxAtmospheringSpeed: starship.maxAtmospheringSpeed ?? '',
        hyperdriveRating: starship.hyperDriveRating ?? '',
        MGLT: starship.mglt ?? '',
        cargoCapacity: starship.cargoCapacity ?? '',
        consumables: starship.consumables ?? '',
    ),
  );

  return starshipId;
}


Future<void> _saveStarshipFilms(AppDatabase db, Starships starship, int starshipId) async {
  if (starship.films != null && starship.films!.isNotEmpty) {
    for (var filmUrl in starship.films!) {
      final filmId = extractIdFromUrl(filmUrl);

      if (filmId != null) {
        await db.into(db.starshipsFilms).insert(
          StarshipsFilmsCompanion.insert(
            starshipId: starshipId,
            filmId: filmId,
          ),
        );
      }
    }
  }
}
