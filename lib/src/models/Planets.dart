import 'package:dart_pet_project/src/models/People.dart';
import 'package:drift/drift.dart';

import 'Films.dart';

class Planets extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().nullable()();
  TextColumn get diameter => text().nullable()();
  TextColumn get rotationPeriod => text().nullable()();
  TextColumn get orbitalPeriod => text().nullable()();
  TextColumn get gravity => text().nullable()();
  TextColumn get population => text().nullable()();
  TextColumn get climate => text().nullable()();
  TextColumn get terrain => text().nullable()();
  TextColumn get surfaceWater => text().nullable()();
}

class PlanetsFilms extends Table {
  IntColumn get planetId => integer().references(Planets, #id)();
  IntColumn get filmId => integer().references(Films, #id)();

  @override
  Set<Column> get primaryKey => {planetId, filmId};
}

class PlanetsPeople extends Table {
  IntColumn get planetId => integer().references(Planets, #id)();
  IntColumn get peopleId => integer().references(People, #id)();

  @override
  Set<Column> get primaryKey => {planetId, peopleId};
}
