import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoot_it/files/pages/first_screen.dart';
import 'package:shoot_it/models/model.dart';
import 'package:shoot_it/db/db.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DB.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoot It',
      theme: ThemeData(
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: const Color(0xFFe9edf5)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FirstScreen(),
    );
  }
}
