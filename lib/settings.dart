import 'package:dotenv/dotenv.dart';

var env = DotEnv(includePlatformEnvironment: true)..load();

String AUTH_TOKEN = env['AUTH_TOKEN']!;