// Karim Toson || kareemtoson1@gmail.com || Wed Jul 01 2026 17:26:49

import 'package:hive_flutter/hive_flutter.dart';

class HiveDataSource {
  final Box _nameBox = Hive.box('nameBox');

  //CRUD
  Future<void> addName(String name) async {
    await _nameBox.put('name', name);
  }

  String getData() {
    return _nameBox.get('name');
  }

  Future<void> deleteName() async {
    await _nameBox.delete('name');
  }
}
