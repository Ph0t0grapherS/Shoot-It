import 'package:shoot_it/models/model.dart';

class NotesList extends Model {

  static String table = 'notes';

  int id;
  String title;
  String text;
  /*String date;
  String place;*/

  NotesList({ required this.id, required this.title, required this.text/*, required this.date, required this.place */});

  @override
  Map<String, dynamic> toMap() {

    Map<String, dynamic> map = {
      'title': title,
      'text': text,
     /* 'date': date,
      'place': place*/
    };

    if (id != null) { map['id'] = id; }
    return map;
  }

  static NotesList fromMap(Map<String, dynamic> map) {

    return NotesList(
        id: map['id'],
        title: map['title'],
        text: map['text'],
        /*date: map['data'],
      place: map['place']*/
    );
  }
}