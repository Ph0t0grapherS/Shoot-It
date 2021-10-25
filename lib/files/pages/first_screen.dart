import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:shoot_it/files/shoot_it.dart';


class First_screen extends StatelessWidget {
  const First_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 30, right: 30),
            color: Colors.blueGrey.shade900,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 30),
                  child: const Text(
                    'Новая идея!',
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(0xFFe6f4ff),
                        //fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        fontFamily: 'Some'),
                  )
                ),
                Container(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Image.asset("assets/images/8.jpg", fit: BoxFit.cover),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        padding: const EdgeInsets.only(left: 30, right: 150),
                        child:IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.star_border,
                            color: Color(0xFFe9edf5),
                            size: 42)
                        )
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 30, top: 12, right: 40),
                        child: const Text(
                            'author: @arishka_endy'
                        )
                    )
                ]),
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: OutlinedButton(
                    onPressed: (){},
                    child: const Text('Дополнительные настройки',
                      style: TextStyle(fontSize: 22,
                        color: Color(0xFF505770),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        fontFamily: 'Some'),),
                  ),
                )
              ],
            )
      )
    );
  }
}