import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

void main() => runApp(ShootIt());

class ShootIt extends StatelessWidget {
  const ShootIt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
            color: const Color(0xFF07102F),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Название:
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 28, top: 20),
                    child: const Text(
                      'SHOOT IT',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF505770),
                          fontFamily: 'Roboto',
                          decoration: TextDecoration.none),
                    ),
                  ),
                  //Кнопка меню:
                  Container(
                      alignment: Alignment.topRight,
                      padding: const EdgeInsets.only(top: 18, right: 28),
                      child: TextButton(
                          child: const Icon(Icons.menu_rounded,
                              size: 38, color: Colors.white),
                          onPressed: () => {const Menu()}))
                ])));
  }
}

//Всплывающее меню:

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.only(top: 18, right: 28),
            color: Colors.white,
            width: 40,
            height: 40,
            child: Column(children: [
              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 5, top: 5),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Попробуй что-то новое!")))
            ])));
  }
}
