import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoot_it/files/pages/note_create_screen.dart';
import 'package:shoot_it/files/popup_menu.dart';
import 'package:shoot_it/db/db.dart';
import 'package:shoot_it/models/note_model.dart';

class Notes extends StatefulWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  State<Notes> createState() => _Notes();
}

class _Notes extends State<Notes> {

  int _id = 0;
  late String _title;
  late String _text;
  /*late String _date;
  late String _place;*/

  List<NotesList> _titles = [];
  //final List<NotesList> _texts = [];

  final TextStyle _style = const TextStyle(color: Colors.black, fontSize: 24);

  List<Widget> get _items => _titles.map((item) => format(item)).toList();

  Widget format(NotesList item) {

    return Dismissible(
      key: Key(item.id.toString()),
      child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
          child: TextButton(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(item.title, style: _style),
                  Text(item.text, style: _style),
                ]
            ),
            onPressed: () => _toggle(item),
          )
      ),
      onDismissed: (DismissDirection direction) => _delete(item),
    );
  }

  void _toggle(NotesList item) async {

  }

  void _delete(NotesList item) async {

    DB.delete(NotesList.table, item);
    refresh();
  }

  /*void _save() async {

    Navigator.of(context).pop();
    NotesList item = NotesList(
        id: _id,
        title: _title,
        text: _text,
        /*date: _date,
        place: _place,*/
    );

    await DB.insert(NotesList.table, item);
    setState(() => _title = '' );
    setState(() => _text = '' );
    refresh();
  }*/

  /*void _create(BuildContext context) {

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Создание новой заметки"),
            actions: <Widget>[
              TextButton(
                  child: const Text('Отмена'),
                  onPressed: () => Navigator.of(context).pop()
              ),
              TextButton(
                  child: const Text('Сохранить'),
                  onPressed: () {
                    _id = _id + 1;
                    _save();}
              )
            ],
            content: Column(
                children:[
                  TextField(
                      autofocus: true,
                      decoration: const InputDecoration(labelText: 'Название'),
                      onChanged: (value) { _title = value; },
                  ),
                  TextField(
                    autofocus: true,
                    decoration: const InputDecoration(hintText: 'пора описать идею'),
                    onChanged: (value) { _text = value; },
                  )
            ])
          );
        }
    );
  }*/

  @override

  void initState() {

    refresh();
    super.initState();
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
            title: const Text(
              'Мои заметки',
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
            child: ListView( children: _items )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const NoteCreate()));},
          backgroundColor: Colors.blueAccent,
          child: const Icon(Icons.add, size: 30),
    ),
    );
  }
}