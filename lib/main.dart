import 'dart:io';

import 'package:dart_pet_project/src/repositories/database.dart';
import 'package:dart_pet_project/src/routers/router.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart';

const String version = '0.0.1';

final basicRouter = Router()
  ..get('/', _rootHandler);


Future<void> main() async {

  final port = 8000;

  final database = AppDatabase();
  final apiRouter = createApiRouter(database);

  final cascade = Cascade()
      .add(basicRouter.call)
      .add(apiRouter.call);

  final server = await shelf_io.serve(
    logRequests()
        .addHandler(cascade.handler),

    InternetAddress.loopbackIPv4,
    port,
  );

  print('Server running on http://${server.address.host}:${server.port}');

  _watch.start();
}

Response _rootHandler(Request request) => Response.ok('Welcome to the Basic Router!');

final _watch = Stopwatch();
