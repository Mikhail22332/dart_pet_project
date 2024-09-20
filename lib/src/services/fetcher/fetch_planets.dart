import 'package:dart_pet_project/src/utils/utils.dart';
import 'package:drift/drift.dart';

import 'package:dart_pet_project/src/repositories/database.dart';

/// Fetches and saves planet data along with associated films and people.
///
/// [db]: The AppDatabase instance.
/// [results]: A list of dynamic objects representing planet data.
Future<void> fetchAndSavePlanets(AppDatabase db, List<dynamic> results) async {

  for (var result in results) {
    if (result['films'] != null){
      for (var filmUrl in result['films']){
        final filmId = extractIdFromUrl(filmUrl);

        final planetId = await savePlanets(db, result);
        await savePlanetsFilms(db, filmId, planetId);
        await savePlanetsPeople(db, result, planetId);

      }
    }
  }

}

/// Saves planet data into the database and returns the inserted planet ID.
///
/// [db]: The AppDatabase instance.
/// [result]: A map containing planet data.
///
/// Returns the ID of the inserted planet.
Future<int> savePlanets(AppDatabase db, Map<String, dynamic> result) async{
  final planetId = await db.into(db.planets).insert(
    PlanetsCompanion.insert(
      name: Value(result['name']),
      diameter: Value(result['diameter']),
      rotationPeriod: Value(result['rotation_period']),
      orbitalPeriod: Value(result['orbital_period']),
      gravity: Value(result['gravity']),
      population: Value(result['population']),
      climate: Value(result['climate']),
      terrain: Value(result['terrain']),
      surfaceWater: Value(result['surface_water']),
    ),
  );
  return planetId;
}

/// Saves the association between a planet and a film in the PlanetsFilms table.
///
/// [db]: The AppDatabase instance.
/// [filmId]: The ID of the associated film.
/// [planetId]: The ID of the planet.
Future<void> savePlanetsFilms(AppDatabase db, int? filmId, int planetId) async{
  if (filmId != null) {
    await db.into(db.planetsFilms).insert(
        PlanetsFilmsCompanion.insert(
          planetId: planetId,
          filmId: filmId,
        )
    );
  }
}

/// Saves the association between a planet and its residents in the PlanetsPeople table.
///
/// [db]: The AppDatabase instance.
/// [result]: A map containing planet data.
/// [planetId]: The ID of the planet.
Future<void> savePlanetsPeople(AppDatabase db, Map<String, dynamic> result, int planetId) async{
  if (result['residents'] != null) {
    for (var peopleUrl in result['residents']) {
      final peopleId = extractIdFromUrl(peopleUrl);

      if (peopleId != null) {
        await db.into(db.planetsPeople).insert(
          PlanetsPeopleCompanion.insert(
            planetId: planetId,
            peopleId: peopleId,
          ),
        );
      }
    }
  }
}
