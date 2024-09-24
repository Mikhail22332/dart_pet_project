import 'dart:io';

import 'package:dart_pet_project/src/models/drift/films.dart';
import 'package:dart_pet_project/src/models/drift/people.dart';
import 'package:dart_pet_project/src/models/drift/planets.dart';
import 'package:dart_pet_project/src/models/drift/species.dart';
import 'package:dart_pet_project/src/models/drift/starships.dart';
import 'package:dart_pet_project/src/models/drift/vehicles.dart';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';

part 'database.g.dart';


@DriftDatabase(tables: [
  People,
  Planets,
  Species,
  Starships,
  Vehicles,
  Films,
  VehiclesFilms,
  StarshipsFilms,
  SpeciesFilms,
  PlanetsFilms,
  PlanetsPeople,
  PeopleFilms,
  PeopleVehicles,
  PeopleStarships,
])
class AppDatabase extends _$AppDatabase{

  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return NativeDatabase.createInBackground(File('database.db'));
  }

  Future<List<Planet>> getAllPlanets() async {
    return await select(planets).get();
  }

  Future<void> deleteEverything() {
    return transaction(() async {
      for (final table in allTables) {
        await delete(table).go();
        //reset auto increment
        await customStatement('DELETE FROM sqlite_sequence WHERE name = "${table.actualTableName}";');
      }
    });
  }
}
