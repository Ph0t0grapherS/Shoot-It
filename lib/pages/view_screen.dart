import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../navigation/popup_menu.dart';

String id;

class ViewScreen extends StatefulWidget {
  ViewScreen({Key key, this.id});

  final String id;

  @override
  State<ViewScreen> createState() => _ViewScreen();
}

class _ViewScreen extends State<ViewScreen> {

  //@required String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MenuButton(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        shadowColor: const Color(0x0013143E),
        title: const Text('Просмотр',
            style: TextStyle(
                fontSize: 36,
                color: Color(0xFF505770),
                letterSpacing: 3,
                fontWeight: FontWeight.w800,
                fontFamily: 'Some')),
      ),
      body: Center(
          child: Container(
              alignment: Alignment.center,
              //padding: const EdgeInsets.only(left: 30, right: 30),
              color: const Color(0xff1d4663),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      constraints: BoxConstraints(maxHeight: 490),
                      child: Image.asset("images/${widget.id}.jpg", fit: BoxFit.contain)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(left: 50, top: 7, bottom: 20),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.star_border,
                                    color: Color(0xFFe9edf5), size: 42))),
                        Container(
                            padding: const EdgeInsets.only(top: 9, right: 50, bottom: 10),
                            child: const Text('author: @arishka_endy',
                                style: TextStyle(fontFamily: 'Some')))
                      ]),
                ],
              ))),
    );
  }
}
