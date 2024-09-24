import 'package:dart_pet_project/src/models/freezed_models/species.dart';
import 'package:dart_pet_project/src/utils/utils.dart';
import 'package:drift/drift.dart';

import 'package:dart_pet_project/src/repositories/database.dart';

import 'base_data_saver.dart';

class SpeciesSaver extends BaseDataSaver<Species>{

  SpeciesSaver(super.db);

  @override
  Future<void> fetchAndSave(List<Species> items) async {
    for (var element in items) {
      final speciesId = await _saveSpecies(db, element);
      await _saveSpeciesFilms(db, element, speciesId);
    }
  }
}

Future<int> _saveSpecies(AppDatabase db, Species species) async {
  final speciesId = await db.into(db.species).insert(
    SpeciesCompanion.insert(
      name: Value(species.name ?? ''),
      classification: Value(species.classification ?? ''),
      designation: Value(species.designation ?? ''),
      averageHeight: Value(species.averageHeight ?? ''),
      averageLifespan: Value(species.averageLifespan ?? ''),
      eyeColors: Value(species.eyeColors ?? ''),
      hairColors: Value(species.hairColors ?? ''),
      skinColors: Value(species.skinColors ?? ''),
      language: Value(species.language ?? ''),
      homeworldId: species.homeworld != null
          ? Value(extractIdFromUrl(species.homeworld!))
          : const Value<int?>.absent(),
    ),
  );

  return speciesId;
}


Future<void> _saveSpeciesFilms(AppDatabase db, Species species, int speciesId) async {
  if (species.films != null && species.films!.isNotEmpty) {
    for (var filmUrl in species.films!) {
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
