import 'package:dart_pet_project/settings.dart';
import 'package:dart_pet_project/src/repositories/database.dart';
import 'package:dart_pet_project/src/services/content_extraction.dart';
import 'package:dart_pet_project/src/utils/utils.dart';

import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf.dart';
import 'dart:convert';


Router createApiRouter(AppDatabase database) {
  final router = Router();

  router.get('/api/v1/content', checkAuthToken(AUTH_TOKEN)(contentRouterHandler(database)));
  router.get('/api/v1/content/clean', checkAuthToken(AUTH_TOKEN)(contentRouterHandler(database)));

  return router;
}

Future<Response> handleContentRequest(Request request, AppDatabase db) async {
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
      await fetchAndSaveData(db, key, url);
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


Future<Response> handleContentCleanRequest(Request request, AppDatabase database) async {
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

Handler contentRouterHandler(AppDatabase db) {
  return (Request request) async {
    switch (request.requestedUri.path) {
      case '/api/v1/content':
        return await handleContentRequest(request, db);
      case '/api/v1/content/clean':
        return await handleContentCleanRequest(request, db);
      default:
        return Response.notFound('Not Found');
    }
  };
}
