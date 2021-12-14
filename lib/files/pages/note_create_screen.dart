import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoot_it/files/popup_menu.dart';
import 'package:shoot_it/models/note_model.dart';
import 'package:shoot_it/db/db.dart';
import 'package:shoot_it/files/pages/notes_screen.dart';

class NoteCreate extends StatefulWidget {
  const NoteCreate({Key? key}) : super(key: key);

  @override
  State<NoteCreate> createState() => _NoteCreate();
}

class _NoteCreate extends State<NoteCreate> {

  int _id = 0;
  late String _title;
  late String _text;

  List<NotesList> _titles = [];


  void _save() async {
    Navigator.of(context).pop();
    NotesList item = NotesList(
      id: _id,
      title: _title,
      text: _text,
      /*date: _date,
        place: _place,*/
    );

    await DB.insert(NotesList.table, item);
    setState(() => _title = '');
    setState(() => _text = '');
    refresh();
  }

  void refresh() async {

    List<Map<String, dynamic>> _results = await DB.query(NotesList.table);
    _titles = _results.map((item) => NotesList.fromMap(item)).toList();
    setState(() { });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MenuButton(),
      appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          shadowColor: const Color(0x0013143E),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.restore_from_trash),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Notes()));
                }
            ),
            IconButton(
                icon: const Icon(Icons.save),
                onPressed: () {
                  _id = _id + 1;
                  _save();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Notes()));}
            )
          ],
          title: const Text(
              'Новая заметка',
              style: TextStyle(
                  fontSize: 36,
                  color: Color(0xFF505770),
                  letterSpacing: 3,
                  fontWeight: FontWeight.w800, fontFamily: 'Some')
          )

      ),

          body: Container(
            padding: const EdgeInsets.all(5),
            color: const Color(0xff1d4663),
            child: Column(
                children:[
                  TextField(
                    autofocus: true,
                    decoration: const InputDecoration(labelText: 'Название'),
                    onChanged: (value) { _title = value; },
                  ),
                  TextField(
                    autofocus: true,
                    maxLines: null,
                    decoration: const InputDecoration(hintText: 'Опиши свою идею'),
                    onChanged: (value) { _text = value; },
                  )
                ]))
    );
  }
}