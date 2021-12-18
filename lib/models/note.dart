import 'package:hive/hive.dart';
//import 'package:hive_flutter/hive_flutter.dart';
part 'note.g.dart';

@HiveType(typeId: 0)
class Note extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String title;
  @HiveField(2)
  String note;

  Note({this.title = '', this.note = ''});
}