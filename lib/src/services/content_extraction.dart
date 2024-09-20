import 'dart:convert';

import 'package:dart_pet_project/src/repositories/database.dart';
import 'package:dart_pet_project/src/services/fetcher/fetch_films.dart';
import 'package:dart_pet_project/src/services/fetcher/fetch_people.dart';
import 'package:dart_pet_project/src/services/fetcher/fetch_planets.dart';
import 'package:dart_pet_project/src/services/fetcher/fetch_species.dart';
import 'package:dart_pet_project/src/services/fetcher/fetch_starships.dart';
import 'package:dart_pet_project/src/services/fetcher/fetch_vehicles.dart';
import 'package:http/http.dart' as http;


Future<void> fetchAndSaveData(AppDatabase db, String key, String? url) async {
  while (url != null) {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final results = data['results'];

      // Call the appropriate save function based on the key
      switch (key) {
        case 'films':
          await fetchAndSaveFilms(db, results);
          break;
        case 'people':
          await fetchAndSavePeople(db, results);
          break;
        case 'planets':
          await fetchAndSavePlanets(db, results);
          break;
        case 'species':
          await fetchAndSaveSpecies(db, results);
          break;
        case 'starships':
          await fetchAndSaveStarships(db, results);
          break;
        case 'vehicles':
          await fetchAndSaveVehicles(db, results);
          break;
        default:
          throw Exception('Unknown data type: $key');
      }

      url = data['next'];
    } else if (response.statusCode == 404) {
      throw Exception('Data not found: ${response.reasonPhrase}');
    } else {
      throw Exception('Failed to fetch data: ${response.statusCode}');
    }
  }
}
