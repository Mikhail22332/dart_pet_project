import 'package:dart_pet_project/src/services/fetcher/base_data_saver.dart';
import 'package:dart_pet_project/src/utils/utils.dart';
import 'package:drift/drift.dart';

import 'package:dart_pet_project/src/repositories/database.dart';

import '../../models/freezed_models/people.dart';

class PeopleSaver extends BaseDataSaver<People>{

  PeopleSaver(super.db);

  @override
  Future<void> fetchAndSave(List<People> items) async{
    for (var result in items) {
      final homeWorldId = result.homeWorld != null
          ? Value(extractIdFromUrl(result.homeWorld!))
          : const Value<int?>.absent();

      final speciesId = (result.species != null && result.species!.isNotEmpty)
          ? Value(extractIdFromUrl(result.species![0]))
          : const Value<int?>.absent();

      // Write data to tables
      final int peopleId = await _savePerson(db, result, homeWorldId, speciesId);
      await _savePeopleFilms(db, result, peopleId);
      await _savePeopleVehicles(db, result, peopleId);
      await _savePeopleStarships(db, result, peopleId);
    }
  }
}


Future<int> _savePerson(AppDatabase db, People person, Value<int?> homeWorldId, Value<int?> speciesId) async {
  final peopleId = await db.into(db.people).insert(

    PeopleCompanion.insert(
      name: Value(person.name ?? ''),
      birthYear: Value(person.birthYear ?? ''),
      eyeColor: Value(person.eyeColor ?? ''),
      skinColor: Value(person.skinColor ?? ''),
      gender: Value(person.gender ?? ''),
      hairColor: Value(person.hairColor ?? ''),
      height: Value(person.height ?? ''),
      mass: Value(person.mass ?? ''),
      homeWorldId: homeWorldId,
      speciesId: speciesId,
    ),
  );

  return peopleId;
}

Future<void> _savePeopleFilms(AppDatabase db, People person, int peopleId) async {
  if (person.films != null) {
    for (var filmUrl in person.films!) {
      final filmId = extractIdFromUrl(filmUrl);
      if (filmId != null) {
        await db.into(db.peopleFilms).insert(
          PeopleFilmsCompanion.insert(
            peopleId: peopleId,
            filmId: filmId,
          ),
        );
      }
    }
  }
}

Future<void> _savePeopleVehicles(AppDatabase db, People person, int peopleId) async {
  if (person.vehicles != null) {
    for (var vehicleUrl in person.vehicles!) {
      final vehicleId = extractIdFromUrl(vehicleUrl);
      if (vehicleId != null) {
        await db.into(db.peopleVehicles).insert(
          PeopleVehiclesCompanion.insert(
            peopleId: peopleId,
            vehicleId: vehicleId,
          ),
        );
      }
    }
  }
}

Future<void> _savePeopleStarships(AppDatabase db, People person, int peopleId) async {
  if (person.starships != null) {
    for (var starshipUrl in person.starships!) {
      final starshipId = extractIdFromUrl(starshipUrl);
      if (starshipId != null) {
        await db.into(db.peopleStarships).insert(
          PeopleStarshipsCompanion.insert(
            peopleId: peopleId,
            starshipId: starshipId,
          ),
        );
      }
    }
  }
}
