import 'package:dart_pet_project/settings.dart';
import 'package:dart_pet_project/src/repositories/database.dart';
import 'package:dart_pet_project/src/services/data_fetcher.dart';
import 'package:dart_pet_project/src/utils/utils.dart';
import 'package:shelf/shelf.dart';
import 'dart:convert';

import 'package:shelf_router/shelf_router.dart';

class RouterAdapter{
  late final AppDatabase _database;
  late final DataFetcher _dataFetcher;

  RouterAdapter(database, DataFetcher dataFetcher){
    _database = database;
    _dataFetcher = dataFetcher;
  }

  Router createApiRouter() {
    final router = Router();

    router.get('/', _contentRouterHandler(_database));
    router.get('/api/v1/content', checkAuthToken(AUTH_TOKEN)(_contentRouterHandler(_database)));
    router.get('/api/v1/content/clean', checkAuthToken(AUTH_TOKEN)(_contentRouterHandler(_database)));

    return router;
  }
  
  Future<Response> _handleContentRequest(Request request) async {
    final Map<String, dynamic> rootData = await getRootData();
    try {
      if (rootData.isEmpty) {
        return Response.ok(
          jsonEncode({
            'status': 'success',
            'message': 'No data to fetch.',
          }),
          headers: {'Content-Type': 'application/json'},
        );
      }

      for (var entry in rootData.entries) {
        String key = entry.key;
        String? url = entry.value;
        await _dataFetcher.fetchStateMachine(key, url);
      }

      return Response.ok(
        jsonEncode({
          'status': 'success',
          'message': 'Data fetched and saved successfully',
        }),
        headers: {'Content-Type': 'application/json'},
      );
    } catch (e) {
      return Response.internalServerError(
        body: jsonEncode({
          'status': 'error',
          'message': 'Failed to fetch or save data: $e',
        }),
        headers: {'Content-Type': 'application/json'},
      );
    }
  }


  Future<Response> _handleContentCleanRequest(Request request, AppDatabase database) async {
    try{
      await database.deleteEverything();
      return Response.ok(jsonEncode({
        'status': 'success',
        'message': 'All content was deleted successfully',
      }), headers: {
        'Content-Type': 'application/json',
      });
    }catch (e){
      return Response.internalServerError(
        body: jsonEncode({
          'status': 'error',
          'message': 'Failed to delete data from tables: $e',
        }),
        headers: {'Content-Type': 'application/json'},
      );
    }
  }

  Response _rootHandler(Request request) => Response.ok('Welcome to the Basic Router!');

  Handler _contentRouterHandler(AppDatabase db) {
    return (Request request) async {
      switch (request.requestedUri.path) {
        case '/':
          return _rootHandler(request);
        case '/api/v1/content':
          return await _handleContentRequest(request);
        case '/api/v1/content/clean':
          return await _handleContentCleanRequest(request, db);
        default:
          return Response.notFound('Not Found');
      }
    };
  }
}
