import 'package:dart_pet_project/src/models/freezed_models/planets.dart';
import 'package:dart_pet_project/src/utils/utils.dart';
import 'package:drift/drift.dart';

import 'package:dart_pet_project/src/repositories/database.dart';

import 'base_data_saver.dart';

class PlanetsSaver extends BaseDataSaver<Planets>{

  PlanetsSaver(super.db);

  @override
  Future<void> fetchAndSave(List<Planets> items) async {
    for (var planet in items) {
      if (planet.films != null){
        for (var filmUrl in planet.films!){
          final filmId = extractIdFromUrl(filmUrl);

          final planetId = await _savePlanets(db, planet);
          await _savePlanetsFilms(db, filmId, planetId);
          await _savePlanetsPeople(db, planet, planetId);
        }
      }
    }
  }
}

Future<int> _savePlanets(AppDatabase db, Planets planet) async{
  final planetId = await db.into(db.planets).insert(
    PlanetsCompanion.insert(
      name: Value(planet.name ?? ''),
      diameter: Value(planet.diameter ?? ''),
      rotationPeriod: Value(planet.rotationPeriod ?? ''),
      orbitalPeriod: Value(planet.orbitalPeriod ?? ''),
      gravity: Value(planet.gravity ?? ''),
      population: Value(planet.population ?? ''),
      climate: Value(planet.climate ?? ''),
      terrain: Value(planet.terrain ?? ''),
      surfaceWater: Value(planet.surfaceWater ?? ''),
    ),
  );
  return planetId;
}

Future<void> _savePlanetsFilms(AppDatabase db, int? filmId, int planetId) async{
  if (filmId != null) {
    await db.into(db.planetsFilms).insert(
        PlanetsFilmsCompanion.insert(
          planetId: planetId,
          filmId: filmId,
        )
    );
  }
}

Future<void> _savePlanetsPeople(AppDatabase db, Planets planet, int planetId) async{
  if (planet.residents != null && planet.residents!.isNotEmpty) {
    for (var peopleUrl in planet.residents!) {
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
