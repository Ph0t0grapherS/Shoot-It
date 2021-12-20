import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shoot_it/pages/first_screen.dart';
import 'package:shoot_it/models/note.dart';
import 'package:shoot_it/client/hive_names.dart';


void main() async {

  await Hive.initFlutter();
  Hive.registerAdapter(NoteAdapter());
  await Hive.openBox<Note>(HiveBoxes.note);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void dispose() async {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoot It',
      theme: ThemeData(
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: const Color(0xff1d4663)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FirstScreen(),
    );
  }
}
