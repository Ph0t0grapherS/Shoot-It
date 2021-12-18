import 'package:flutter/material.dart';
import 'package:shoot_it/pages/view_screen.dart';
import 'package:shoot_it/navigation/popup_menu.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({key}) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreen();
}

class _FavoritesScreen extends State<FavoritesScreen> {
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
      body: SingleChildScrollView(
          child: Container(
              //alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 4, right: 4),
              color: const Color(0xff1d4663),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                        //
                        children: [
                          picInFav(id: 1, onClicked: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewScreen()));
                          },),
                          picInFav(id: 2, onClicked: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewScreen()));
                          },),
                          picInFav(id: 3, onClicked: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewScreen()));
                          },),
                          picInFav(id: 4, onClicked: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewScreen()));
                          },),
                        ]),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          picInFav(id: 5, onClicked: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewScreen()));
                          },),
                          picInFav(id: 6, onClicked: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewScreen()));
                          },),
                          picInFav(id: 7, onClicked: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewScreen()));
                          },),
                          picInFav(id: 8, onClicked: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewScreen()));
                          },),
                          picInFav(id: 9, onClicked: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewScreen()));
                          },)
                        ])
                  ]))),
    );
  }

  Widget picInFav({
    int id,

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
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: FractionalOffset.topCenter,
                image: AssetImage("assets/images/${id}.jpg")
              ),
            )
          )
          )
      )
    );
  }
}
