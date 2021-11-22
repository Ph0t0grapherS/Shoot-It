import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'files/active_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoot It',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: const Color(0xFFe9edf5)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ActiveScreen(),
    );
  }
}