// Karim Toson || kareemtoson1@gmail.com || Fri Jul 03 2026 16:59:44

import 'package:hive_flutter/adapters.dart';

part 'person_model.g.dart';

@HiveType(typeId: 0)
class PersonModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int age;

  PersonModel({required this.name, required this.age});
}
