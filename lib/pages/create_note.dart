import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../models/note.dart';
import '../../client/hive_names.dart';

class AddNote extends StatefulWidget {
  final formKey = GlobalKey<FormState>();

  @override
  _AddNoteState createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  String title = '';
  String note = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        shadowColor: const Color(0x0013143E),
        title: const Text(
            'Новая заметка',
            style: TextStyle(
                fontSize: 36,
                color: Color(0xFF505770),
                letterSpacing: 3,
                fontWeight: FontWeight.w800, fontFamily: 'Some')
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save, size: 28,),
            onPressed: _validateAndSave,
          ),
        ],
      ),
      body: Container (
        color: const Color(0xff1d4663),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      autofocus: true,
                      style: TextStyle(color: Colors.white),
                      initialValue: '',
                      decoration: const InputDecoration(
                        labelText: 'Название:',
                      ),
                      onChanged: (value) {
                        setState(() {
                          title = value;
                        });
                      },
                      validator: (val) {
                        return val.trim().isEmpty
                            ? 'Название не может быть пустым!'
                            : null;
                      },
                    ),
                    Container(
                      child: TextFormField(
                        initialValue: '',
                        style: TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'Текст заметки',
                        ),
                        keyboardType: TextInputType.multiline,
                        maxLines: 50,
                        onChanged: (value) {
                          setState(() {
                            note = value == null ? '' : value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      _onFormSubmit();
    } else {
      print('Неверное заполнение!');
    }
  }

  void _onFormSubmit() {
    Box<Note> contactsBox = Hive.box<Note>(HiveBoxes.note);
    contactsBox.add(Note(title: title, note: note));
    Navigator.of(context).pop();
  }
}