import 'package:dart_pet_project/src/utils/utils.dart';

import 'package:dart_pet_project/src/repositories/database.dart';

/// Fetches and saves starship data along with associated films.
///
/// [db]: The AppDatabase instance.
/// [results]: A list of dynamic objects representing starship data.
Future<void> fetchAndSaveStarships(AppDatabase db, List<dynamic> results) async {

  for (var result in results) {

    final int starshipId = await saveStarship(db, result);

    await saveStarshipFilms(db, result, starshipId);
  }
}

/// Saves starship data into the database and returns the inserted starship ID.
///
/// [db]: The AppDatabase instance.
/// [result]: A map containing starship data.
///
/// Returns the ID of the inserted starship.
Future<int> saveStarship(AppDatabase db, Map<String, dynamic> result) async {
  final starshipId = await db.into(db.starships).insert(
    StarshipsCompanion.insert(
      name: result['name'],
      model: result['model'],
      starshipClass: result['starship_class'],
      manufacturer: result['manufacturer'],
      length: result['length'],
      costInCredits: result['cost_in_credits'],
      crew: result['crew'],
      passengers:result['passengers'],
      maxAtmospheringSpeed: result['max_atmosphering_speed'],
      hyperdriveRating: result['hyperdrive_rating'],
      MGLT:result['MGLT'],
      cargoCapacity: result['cargo_capacity'],
      consumables: result['consumables'],
    ),
  );

  return starshipId;
}

/// Saves the association between a starship and its films in the StarshipsFilms table.
///
/// [db]: The AppDatabase instance.
/// [result]: A map containing starship data.
/// [starshipId]: The ID of the starship.
Future<void> saveStarshipFilms(AppDatabase db, Map<String, dynamic> result, int starshipId) async {
  if (result['films'] != null) {
    for (var filmUrl in result['films']) {
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
