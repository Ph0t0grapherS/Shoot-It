import 'dart:io';
import 'dart:async';
//import 'dart:math';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shoot_it/pages/view_screen.dart';
import 'package:shoot_it/navigation/popup_menu.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({key}) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreen();
}

class _FavoritesScreen extends State<FavoritesScreen> {

  File file;
  String id;
  int k;
  bool list = false;
  List<Widget> images = [];

  //@override
  void initState() {
    print('вход2');
    super.initState();
    getId();
  }

  Future <void> getId() async {
    print('вход');
    if (list != true){
    id = await rootBundle.loadString('files/favorites.txt');
    getList();}
    else {print('найдено');
    print('чтение');
    k = id.length;
    getList();
    print('выход');}
    //return id;
    //print('возвращение');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MenuButton(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        shadowColor: const Color(0x0013143E),
        title: const Text('Избранное',
            style: TextStyle(
                fontSize: 36,
                color: Color(0xFF505770),
                letterSpacing: 3,
                fontWeight: FontWeight.w800, fontFamily: 'Some')),
      ),
      /*body: SingleChildScrollView(
          child: Container (
              color: const Color(0xff1d4663),
              child:Column(
                children: images,
              )
          )
      )*/
    );
  }

  Widget picInFav({
    String id,

    VoidCallback onClicked,
  }) {
    return Container(
      padding: const EdgeInsets.all(3),
      width: 220,
      height: 220,
      child: TextButton(
        onPressed: onClicked,
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: Image.file(
              File('assets/images/${id}.jpg'))
        ),
      )
    );
  }

  List<Widget> getList() {
    //List<Widget> images = [];

    print('вход3');
    print(k);

    if (id == null) {
      list = false;
      initState();
    }
    else if (k == null){
      print(k);
      list = true;
      getId();
    }
    else {
      print('вход4');
      for (int i = 0; i < k-1; i++) {
        print(i);
        if (i % 2 == 0 ){
          print(i);
          images.add(
              picInFav(id: id[i] + id[i + 1], onClicked: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ViewScreen(id: id[i] + id[i + 1])));
              },)
          );
        };
      };
      Column(
          children: images);
    }
    //return images;
  }
}
