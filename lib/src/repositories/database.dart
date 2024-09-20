import 'dart:convert';
import 'dart:io';

import 'package:dart_pet_project/src/models/Films.dart';
import 'package:dart_pet_project/src/models/People.dart';
import 'package:dart_pet_project/src/models/Planets.dart';
import 'package:dart_pet_project/src/models/Species.dart';
import 'package:dart_pet_project/src/models/Starships.dart';
import 'package:dart_pet_project/src/models/Vehicles.dart';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:http/http.dart' as http;

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
      }
    });
  }
}

Future<void> testDatabase(AppDatabase db) async {
  // Example of adding a sample planet
  await db.into(db.planets).insert(
    PlanetsCompanion(
      name: Value('Test Planet'),
      diameter: Value('10000'),
      rotationPeriod: Value('24'),
      orbitalPeriod: Value('365'),
      gravity: Value('1 standard'),
      population: Value('1000000'),
      climate: Value('temperate'),
      terrain: Value('mountains'),
      surfaceWater: Value('50'),
    ),
  );

  // Query and print the added planet
  final planets = await db.select(db.planets).get();
  print(planets);
}
