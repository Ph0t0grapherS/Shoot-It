
import 'package:flutter/material.dart';
import 'package:shoot_it/files/pages/view_screen.dart';
import 'package:shoot_it/files/popup_menu.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

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
        title: const Text('SHOOT IT',
            style: TextStyle(
                fontSize: 36,
                color: Color(0xFF505770),
                letterSpacing: 3,
                fontWeight: FontWeight.w800,
                fontFamily: 'CantoraOne')),
      ),
      body: SingleChildScrollView(
          child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 20, right: 20),
              color: const Color(0xff1d4663),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    //const Spacer(),
                    Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
    required int id,

    VoidCallback? onClicked,
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
