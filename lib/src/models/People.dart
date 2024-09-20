import 'package:drift/drift.dart';

import 'Films.dart';
import 'Planets.dart';
import 'Species.dart';
import 'Starships.dart';
import 'Vehicles.dart';

class People extends Table{
    IntColumn get id => integer().autoIncrement()();
    TextColumn get name => text().nullable()();
    TextColumn get birthYear => text().nullable()();
    TextColumn get eyeColor => text().nullable()();
    TextColumn get gender => text().nullable()();
    TextColumn get hairColor => text().nullable()();
    IntColumn get height => integer().nullable()();
    IntColumn get mass => integer().nullable()();
    TextColumn get skinColor => text().nullable()();
    IntColumn get homeWorldId => integer().references(Planets, #id).nullable()();
    IntColumn get speciesId => integer().references(Species, #id).nullable()();
}

class PeopleStarships extends Table {
    IntColumn get peopleId => integer().references(People, #id)();
    IntColumn get starshipId => integer().references(Starships, #id)();

    @override
    Set<Column> get primaryKey => {peopleId, starshipId};
}

class PeopleVehicles extends Table {
    IntColumn get peopleId => integer().references(People, #id)();
    IntColumn get vehicleId => integer().references(Vehicles, #id)();

    @override
    Set<Column> get primaryKey => {peopleId, vehicleId};
}

class PeopleFilms extends Table {
    IntColumn get peopleId => integer().references(People, #id)();
    IntColumn get filmId => integer().references(Films, #id)();

    @override
    Set<Column> get primaryKey => {peopleId, filmId};
}
