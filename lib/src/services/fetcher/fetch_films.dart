import 'package:dart_pet_project/src/repositories/database.dart';

/// Fetches film data from the API results and saves it into the Films table.
///
/// [db]: The AppDatabase instance used to interact with the database.
/// [results]: A list of dynamic objects representing film data retrieved from the API.
///
/// This function iterates through the list of film data, and for each film, it inserts
/// the film's details (title, episode ID, opening crawl, director, producer, and release date)
/// into the Films table. Each insertion is done using the FilmsCompanion for data consistency.
Future<void> fetchAndSaveFilms(AppDatabase db, List<dynamic> results) async {

    for (var result in results) {
      await db.into(db.films).insert(
          FilmsCompanion.insert(
            title: result['title'],
            episodeId: result['episode_id'],
            openingCrawl: result['opening_crawl'],
            director: result['director'],
            producer: result['producer'],
            releaseDate: result['release_date'],
          )
      );
    }
}
