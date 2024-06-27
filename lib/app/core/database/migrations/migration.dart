import 'package:sqflite/sqflite.dart';

abstract interface class Migration {
  void create(Batch batche);
  void update(Batch batche);
}
