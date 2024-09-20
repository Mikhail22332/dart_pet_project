import 'package:drift/drift.dart';

import 'Films.dart';

class Starships extends Table{
    IntColumn get id => integer().autoIncrement()();
    TextColumn get name => text()();
    TextColumn get model => text()();
    TextColumn get starshipClass => text().named('starship_class')();
    TextColumn get manufacturer => text()();
    TextColumn get length => text().nullable()();
    TextColumn get costInCredits => text().named('cost_in_credits')();
    TextColumn get crew => text().nullable()();
    TextColumn get passengers => text()();
    TextColumn get maxAtmospheringSpeed => text().named('max_atmosphering_speed')();
    TextColumn get hyperdriveRating => text().named('hyperdrive_rating')();
    TextColumn get MGLT => text()();
    TextColumn get cargoCapacity => text().named('cargo_capacity')();
    TextColumn get consumables => text()();
}

class StarshipsFilms extends Table {
    IntColumn get starshipId => integer().references(Starships, #id)();
    IntColumn get filmId => integer().references(Films, #id)();

    @override
    Set<Column> get primaryKey => {starshipId, filmId};
}
