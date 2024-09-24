import 'package:dart_pet_project/src/models/freezed_models/films.dart';
import 'package:dart_pet_project/src/repositories/database.dart';
import 'package:dart_pet_project/src/services/fetcher/base_data_saver.dart';


class FilmSaver extends BaseDataSaver<FilmData>{

  FilmSaver(super.db);

  @override
  Future<void> fetchAndSave(List<FilmData> items) async {
    for (var film in items) {
      await db.into(db.films).insert(
        FilmsCompanion.insert(
          title: film.title ?? '',
          episodeId: film.episodeId ?? 0,
          openingCrawl: film.openingCrawl ?? '',
          director: film.director ?? '',
          producer: film.producer ?? '',
          releaseDate: film.releaseDate ?? '',
        ),
      );
    }
  }
}
