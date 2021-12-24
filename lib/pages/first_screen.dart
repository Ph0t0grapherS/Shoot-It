import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoot_it/pages/settings_screen.dart';
import 'package:shoot_it/pages/view_screen.dart';
import 'dart:math';
import '../../navigation/popup_menu.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreen();
}

class _FirstScreen extends State<FirstScreen> {


  var rnd;
  int r;
  int imid;
  String tid;

  int rand() {
    rnd = new Random();
    r = rnd.nextInt(14);
    return r;
  }

  String id(){
    if (set != true){
      imid = rand();
      tid = 'i${imid}';
      set = false;
      return tid;
    } else{
      tid = newId;
      return tid;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MenuButton(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        shadowColor: const Color(0x0013143E),
        title: const Text('SHOOT IT',
            style: TextStyle(
                fontSize: 36,
                color: Color(0xFF505770),
                letterSpacing: 3,
                fontWeight: FontWeight.w800,
                fontFamily: 'CantoraOne')),
      ),
      body: Center(
          child: Container(
              color: const Color(0xff1d4663),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 20),
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
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: TextButton(
                          child: AspectRatio(
                              aspectRatio: 1 / 1,
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          alignment: FractionalOffset.topCenter,
                                          image: AssetImage('images/${id()}.jpg')
                                      )
                                  )
                              )
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ViewScreen(id: '${tid}')));
                            },
                      )
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(left: 50, top: 12),
                            child: IconButton(
                                onPressed: () {const Icon(Icons.star, color: Color(0xFFe9edf5));},
                                icon: const Icon(Icons.star_border,
                                    color: Color(0xFFe9edf5), size: 42))),
                        Container(
                            padding: const EdgeInsets.only(top: 12, right: 50),
                            child: const Text('author: @arishka_endy',
                                style: TextStyle(fontFamily: 'Some')))
                      ]),
                  Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsScreen()));
                              },
                              //настройки отображаются поверх первого экрана
                              style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      color: Color(0xFF53648D), width: 2)),
                              child: const Text(
                                'Дополнительные настройки',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color(0xFF53648D),
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Some'),
                              ),
                            ),)
                ],)
          )),
    );
  }
}
