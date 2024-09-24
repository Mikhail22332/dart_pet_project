import 'package:dart_pet_project/src/models/freezed_models/people.dart';
import 'package:dart_pet_project/src/models/freezed_models/species.dart';
import 'package:dart_pet_project/src/models/freezed_models/starships.dart';
import 'package:dart_pet_project/src/models/freezed_models/vehicles.dart';
import 'package:dart_pet_project/src/models/freezed_models/films.dart';
import 'package:dart_pet_project/src/repositories/database.dart';
import 'package:dart_pet_project/src/services/fetcher/fetch_films.dart';
import 'package:dart_pet_project/src/services/fetcher/fetch_planets.dart';
import 'package:dart_pet_project/src/services/fetcher/fetch_species.dart';
import 'package:dart_pet_project/src/services/fetcher/fetch_starships.dart';
import 'package:dart_pet_project/src/services/fetcher/fetch_vehicles.dart';
import 'package:dio/dio.dart';

import '../models/freezed_models/planets.dart';
import 'fetcher/fetch_people.dart';

class DataFetcher {
  final Dio _dio;
  final AppDatabase _db;

  DataFetcher(this._dio, this._db);

  Future<void> _fetchAndSaveData<T>(
      String key,
      String? url,
      Future<void> Function(List<T>) saveFunction,
      T Function(Map<String, dynamic>) fromJson,
  )async {
    while (url != null) {
      final response = await _dio.get(url);

      if (response.statusCode == 200) {
        final data = response.data;
        var results = (data['results'] as List)
            .map((e) => fromJson(e as Map<String, dynamic>))
            .toList();

        await saveFunction(results);

        url = data['next'];
      }
      else if (response.statusCode == 404) {
        throw Exception('Data not found: ${response.statusMessage}');
      } else {
        throw Exception('Failed to fetch data: ${response.statusCode} - ${response.statusMessage}');
      }
    }
  }

  Future<void> fetchStateMachine(String key, String? url) async{
    switch (key) {
      case 'films':
        var filmSaver = FilmSaver(_db);
        await _fetchAndSaveData<FilmData>(
          key,
          url,
          filmSaver.fetchAndSave,
              (json) => FilmData.fromJson(json),
        );
        break;
      case 'people':
        var peopleSaver = PeopleSaver(_db);
        await _fetchAndSaveData<People>(
          key,
          url,
          peopleSaver.fetchAndSave,
            (json) => People.fromJson(json),
        );
        break;
      case 'planets':
        var planetsSaver = PlanetsSaver(_db);
        await _fetchAndSaveData<Planets>(
            key,
            url,
            planetsSaver.fetchAndSave,
                (json) => Planets.fromJson(json),
        );
        break;
      case 'species':
        var speciesSaver = SpeciesSaver(_db);
        await _fetchAndSaveData<Species>(
          key,
          url,
          speciesSaver.fetchAndSave,
              (json) => Species.fromJson(json),
        );
        break;
      case 'starships':
        var starshipsSaver = StarshipsSaver(_db);
        await _fetchAndSaveData<Starships>(
          key,
          url,
          starshipsSaver.fetchAndSave,
              (json) => Starships.fromJson(json),
        );
        break;
      case 'vehicles':
        var vehiclesSaver = VehiclesSaver(_db);
        await _fetchAndSaveData<Vehicles>(
          key,
          url,
          vehiclesSaver.fetchAndSave,
              (json) => Vehicles.fromJson(json),
        );
        break;
      default:
        throw Exception('Unknown data type: $key');
    }
  }
}
