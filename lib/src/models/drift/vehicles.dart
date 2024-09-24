import 'package:drift/drift.dart';

import 'films.dart';

class Vehicles extends Table{
    IntColumn get id => integer().autoIncrement()();
    TextColumn get name => text()();
    TextColumn get model => text()();
    TextColumn get vehicleClass => text().named('vehicle_class')();
    TextColumn get manufacturer => text()();
    TextColumn get length => text()();
    TextColumn get costInCredits => text().named('cost_in_credits')();
    TextColumn get crew => text()();
    TextColumn get passengers => text()();
    TextColumn get maxAtmospheringSpeed => text().named('max_atmosphering_speed')();
    TextColumn get cargoCapacity => text().named('cargo_capacity')();
    TextColumn get consumables => text()();
}

class VehiclesFilms extends Table {
    IntColumn get vehicleId => integer().references(Vehicles, #id)();
    IntColumn get filmId => integer().references(Films, #id)();

    @override
    Set<Column> get primaryKey => {vehicleId, filmId};
}
