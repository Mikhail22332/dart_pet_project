import 'package:dart_pet_project/src/utils/utils.dart';
import 'package:drift/drift.dart';

import 'package:dart_pet_project/src/repositories/database.dart';

/// Fetches and saves species data along with associated films.
///
/// [db]: The AppDatabase instance.
/// [results]: A list of dynamic objects representing species data.
Future<void> fetchAndSaveSpecies(AppDatabase db, List<dynamic> results) async {
  for (var result in results) {
    final speciesId = await saveSpecies(db, result);
    await saveSpeciesFilms(db, result, speciesId);
  }
}

/// Saves species data into the database and returns the inserted species ID.
///
/// [db]: The AppDatabase instance.
/// [result]: A map containing species data.
///
/// Returns the ID of the inserted species.
Future<int> saveSpecies(AppDatabase db, Map<String, dynamic> result) async {
  final speciesId = await db.into(db.species).insert(
    SpeciesCompanion.insert(
      name: Value(result['name'] as String),
      classification: Value(result['classification'] as String),
      designation: Value(result['designation'] as String),
      averageHeight: Value(result['average_height'] as String),
      averageLifespan: Value(result['average_lifespan'] as String),
      eyeColors: Value(result['eye_colors'] as String),
      hairColors: Value(result['hair_colors'] as String),
      skinColors: Value(result['skin_colors'] as String),
      language: Value(result['language'] as String),
      homeworldId: (result['homeworld'] != null)
          ? Value(extractIdFromUrl(result['homeworld']))
          : const Value<int?>.absent(),
    ),
  );

  return speciesId;
}

/// Saves the association between a species and its films in the SpeciesFilms table.
///
/// [db]: The AppDatabase instance.
/// [result]: A map containing species data.
/// [speciesId]: The ID of the species.
Future<void> saveSpeciesFilms(AppDatabase db, Map<String, dynamic> result, int speciesId) async {
  if (result['films'] != null) {
    for (var filmUrl in result['films']) {
      final filmId = extractIdFromUrl(filmUrl);

      if (filmId != null) {
        await db.into(db.speciesFilms).insert(
          SpeciesFilmsCompanion.insert(
            speciesId: speciesId,
            filmId: filmId,
          ),
        );
      }
    }
  }
}
