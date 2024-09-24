import 'package:drift/drift.dart';

class Films extends Table{
    IntColumn get id => integer().autoIncrement()();
    TextColumn get title => text()();
    IntColumn get episodeId => integer().named('episode_id')();
    TextColumn get openingCrawl => text().named('opening_crawl')();
    TextColumn get director => text()();
    TextColumn get producer => text()();
    TextColumn get releaseDate => text().named('release_date')();
}
