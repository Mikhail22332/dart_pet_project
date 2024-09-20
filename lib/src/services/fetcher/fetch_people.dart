import 'package:dart_pet_project/src/utils/utils.dart';
import 'package:drift/drift.dart';

import 'package:dart_pet_project/src/repositories/database.dart';

/// Fetches and saves people data into the database,
/// along with related films, vehicles, and starships.
///
/// [db]: The AppDatabase instance.
/// [results]: A list of dynamic objects representing people data.
Future<void> fetchAndSavePeople(AppDatabase db, List<dynamic> results) async {

  for (var result in results) {
    print(result['homeworld']);
    final homeWorldId = result['homeworld'] != null
        ? Value(extractIdFromUrl(result['homeworld']))
        : const Value<int?>.absent();

    final speciesId = (result['species'] != null && result['species'].isNotEmpty)
        ? Value(extractIdFromUrl(result['species'][0]))
        : const Value<int?>.absent();
    print(homeWorldId);
    print(speciesId);
    // Write data to tables
    final int peopleId = await savePerson(db, result, homeWorldId, speciesId);
    await savePeopleFilms(db, result, peopleId);
    await savePeopleVehicles(db, result, peopleId);
    await savePeopleStarships(db, result, peopleId);

  }

}

/// Saves a person entity into the database and returns the inserted person ID.
///
/// [db]: The AppDatabase instance.
/// [result]: A map containing person data.
/// [homeWorldId]: The homeworld ID to associate with the person.
/// [speciesId]: The species ID to associate with the person.
///
/// Returns the ID of the inserted person.
Future<int> savePerson(
    AppDatabase db, Map<String, dynamic> result,
    Value<int?> homeWorldId, Value<int?> speciesId
    ) async {

  final peopleId = await db.into(db.people).insert(
    PeopleCompanion.insert(
      name: Value(result['name']),
      birthYear: Value(result['birth_year']),
      eyeColor: Value(result['eye_color']),
      skinColor: Value(result['skin_color']),
      gender: Value(result['gender']),
      hairColor: Value(result['hair_color']),
      height: (result['height'] != null && int.tryParse(result['height']) != null)
          ? Value(int.parse(result['height']))
          : Value.absent(),
      mass: (result['mass'] != null && int.tryParse(result['mass']) != null)
          ? Value(int.parse(result['mass']))
          : Value.absent(),
      homeWorldId: homeWorldId,
      speciesId: speciesId,
    ),
  );

  return peopleId;
}

/// Saves film relationships for a person into the PeopleFilms table.
///
/// [db]: The AppDatabase instance.
/// [result]: A map containing person data.
/// [peopleId]: The ID of the person to associate the films with.
Future<void> savePeopleFilms(AppDatabase db,
    Map<String, dynamic> result, int peopleId
    ) async{

  if (result['films'] != null) {
    for (var filmUrl in result['films']) {
      final filmId = extractIdFromUrl(filmUrl);

      if (filmId != null) {
        print(filmId);

        await db.into(db.peopleFilms).insert(
            PeopleFilmsCompanion.insert(
              peopleId: peopleId,
              filmId: filmId,
            )
        );
      }
    }
  }
}

/// Saves vehicle relationships for a person into the PeopleVehicles table.
///
/// [db]: The AppDatabase instance.
/// [result]: A map containing person data.
/// [peopleId]: The ID of the person to associate the vehicles with.
Future<void> savePeopleVehicles(AppDatabase db,
    Map<String, dynamic> result, int peopleId
) async{
  if (result['vehicles'] != null) {
    for (var vehicleUrl in result['vehicles']) {
      final vehicleId = extractIdFromUrl(vehicleUrl);

      if (vehicleId != null) {
        await db.into(db.peopleVehicles).insert(
            PeopleVehiclesCompanion.insert(
              peopleId: peopleId,
              vehicleId: vehicleId,
            )
        );
      }
    }
  }
}

/// Saves starship relationships for a person into the PeopleStarships table.
///
/// [db]: The AppDatabase instance.
/// [result]: A map containing person data.
/// [peopleId]: The ID of the person to associate the starships with.
Future<void> savePeopleStarships(AppDatabase db,
    Map<String, dynamic> result, int peopleId
) async{
  if (result['starships'] != null) {
    for (var starshipUrl in result['starships']) {
      final starshipId = extractIdFromUrl(starshipUrl);

      if (starshipId != null) {
        await db.into(db.peopleStarships).insert(
            PeopleStarshipsCompanion.insert(
              peopleId: peopleId,
              starshipId: starshipId,
            )
        );
      }
    }
  }
}
