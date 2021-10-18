import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

void main() => runApp(ShootIt());

class ShootIt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.blueGrey.shade900,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Название:
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 28, top: 18),
              child: Text('Shoot It',
                style: TextStyle(fontSize: 32, color: Colors.blueGrey.shade500),
              ),
            ),
            //Кнопка меню:
            Container(alignment:
              Alignment.topRight,
              padding: const EdgeInsets.only(top: 18, right: 28),
              child: TextButton(
                  child: const Icon(Icons.menu_rounded, size: 38, color: Colors.white),
                  onPressed: () => {Menu()}
              )
            )
          ]
        )
      )
    );
  }
}

//Всплывающее меню:

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.only(top: 18, right: 28),
            color: Colors.white,
            width: 40,
            height: 40,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 5, top: 5),
                  child: ElevatedButton(
                    onPressed: (){},
                    child: const Text("Попробуй что-то новое!")
                )
                )
              ])
        )
    );
  }
}