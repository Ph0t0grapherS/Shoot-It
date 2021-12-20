import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shoot_it/pages/create_note.dart';
import 'package:shoot_it/navigation/popup_menu.dart';
import 'package:shoot_it/models/note.dart';
import 'package:shoot_it/client/hive_names.dart';

class Notes extends StatefulWidget {
  Notes({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<Notes> createState() => _Notes();
}

class _Notes extends State<Notes> {

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
      body: Container (
        color: const Color(0xff1d4663),
        child: ValueListenableBuilder(
          valueListenable: Hive.box<Note>(HiveBoxes.note).listenable(),
          builder: (context, Box<Note> box, _) {
            if (box.values.isEmpty)
              return Center(
                child: Text("Note list is empty"),
              );
            return ListView.builder(
              itemCount: box.values.length,
              itemBuilder: (context, index) {
                Note res = box.getAt(index);
                return Dismissible(
                  background: Container(color: Colors.red),
                  key: UniqueKey(),
                  onDismissed: (direction) {
                    res.delete();
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(3, 5, 3, 5),
                    decoration: BoxDecoration(
                    border: new Border.all(
                    color: Colors.white30,
                    width: 2.0,
                    style: BorderStyle.solid
                    ),
                    borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                    ),
                    child: ListTile(
                        title: Text(res.title == null ? '' : res.title,
                            style: TextStyle(color: Colors.white)),
                        subtitle: Text(res.note == null ? '' : res.note,
                            style: TextStyle(color: Colors.white70)),
                        onTap: () {
                          AlertDialog(title: const Text('Заметка:'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text(res.title == null ? '' : res.title,
                                      style: TextStyle(color: Colors.white)),
                                  Text(res.note == null ? '' : res.note,
                                      style: TextStyle(color: Colors.white70)),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('Закрыть'),
                                onPressed: () {
                                  Navigator.of(context).pop();},
                              ),
                            ],
                          );
                        }
                    ),
                  )
                );
              },
            );
          },
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddNote())),
          tooltip: 'Add note',
          child: Icon(Icons.add),
        ),
    );
  }
}