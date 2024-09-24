
import 'package:dart_pet_project/src/services/data_fetcher.dart';
import 'package:dio/dio.dart' as dio_lib;
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'dart:io';

import 'package:dart_pet_project/src/repositories/database.dart' as db;
import 'package:dart_pet_project/src/routers/router_adapter.dart';

const String version = '0.0.1';

Future<void> main() async {
  final port = 8000;

  final dio_lib.Dio dio = dio_lib.Dio();
  final database = db.AppDatabase();
  final dataFetcher = DataFetcher(dio, database);
  final RouterAdapter routerAdapter = RouterAdapter(database, dataFetcher);

  final apiRouter = routerAdapter.createApiRouter();

  final cascade = Cascade()
      .add(apiRouter.call);

  final server = await shelf_io.serve(
    logRequests().addHandler(cascade.handler),
    InternetAddress.loopbackIPv4,
    port,
  );

  print('Server running on http://${server.address.host}:${server.port}');

  _watch.start();
}

final _watch = Stopwatch();
