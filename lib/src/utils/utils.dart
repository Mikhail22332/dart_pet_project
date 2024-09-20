import 'dart:convert';
import 'dart:io';

import 'package:dart_pet_project/settings.dart';
import 'package:shelf/shelf.dart';


Future<bool> validateToken(String token) async {
  return token == AUTH_TOKEN;
}

Middleware checkAuthToken(String validToken) {
  return (Handler innerHandler) {
    return (Request request) async {
      final queryParams = request.requestedUri.queryParameters;
      final token = queryParams['token'];

      if (token == validToken) {
        return await innerHandler(request);
      }
      return Response.forbidden('Forbidden: Invalid token');
    };
  };
}

int? extractIdFromUrl(String url) {
  final parts = url.split('/');
  return int.parse(parts[parts.length - 2]);
}

Future<Map<String, dynamic>> getRootData() async {
  final filePath = '${Directory.current.path}/lib/src/data/root.json';
  final file = File(filePath);
  final jsonString = await file.readAsString();
  final Map<String, dynamic> rootData = jsonDecode(jsonString);
  return rootData;
}
