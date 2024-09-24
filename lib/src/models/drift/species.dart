import 'package:drift/drift.dart';

import 'films.dart';
import 'planets.dart';

class Species extends Table{
    IntColumn get id => integer().autoIncrement()();
    TextColumn get name => text().nullable()();
    TextColumn get classification => text().nullable()();
    TextColumn get designation => text().nullable()();
    TextColumn get averageHeight => text().nullable()();
    TextColumn get averageLifespan => text().nullable()();
    TextColumn get eyeColors => text().nullable()();
    TextColumn get hairColors => text().nullable()();
    TextColumn get skinColors => text().nullable()();
    TextColumn get language => text().nullable()();
    IntColumn get homeworldId => integer().references(Planets, #id).nullable()();
}

class SpeciesFilms extends Table {
    IntColumn get speciesId => integer().references(Species, #id)();
    IntColumn get filmId => integer().references(Films, #id)();

    @override
    Set<Column> get primaryKey => {speciesId, filmId};
}
