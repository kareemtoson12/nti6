// Karim Toson || kareemtoson1@gmail.com || Fri Jul 03 2026 17:10:07

import 'package:hive/hive.dart';
import 'package:nti6/features/login/models/person_model.dart';

class HiveDataSource {
  final Box _box = Hive.box('person');
  //Crud
  Future<void> saveData(PersonModel person) async {
    await _box.put('person', person);
  }

  PersonModel getData() {
    return _box.get('person');
  }
}
