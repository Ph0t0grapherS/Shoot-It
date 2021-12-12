import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoot_it/files/pages/settings_screen.dart';

import '../popup_menu.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({Key? key}) : super(key: key);

  @override
  State<ViewScreen> createState() => _ViewScreen();
}

class _ViewScreen extends State<ViewScreen> {
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
              alignment: Alignment.center,
              //padding: const EdgeInsets.only(left: 30, right: 30),
              color: const Color(0xff1d4663),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Image.asset("assets/images/1.jpg")),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(
                                left: 50, top: 12, bottom: 30),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.star_border,
                                    color: Color(0xFFe9edf5), size: 42))),
                        Container(
                            padding: const EdgeInsets.only(
                                top: 12, right: 50, bottom: 20),
                            child: const Text('author: @arishka_endy',
                                style: TextStyle(fontFamily: 'Some')))
                      ]),
                ],
              ))),
    );
  }
}
