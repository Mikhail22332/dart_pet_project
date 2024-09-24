import 'package:dart_pet_project/src/repositories/database.dart';

abstract class BaseDataSaver<T> {

  final AppDatabase db;

  BaseDataSaver(this.db);

  Future<void> fetchAndSave(List<T> items);
}
