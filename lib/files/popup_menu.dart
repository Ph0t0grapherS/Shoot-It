import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoot_it/files/pages/first_screen.dart';

class MenuWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal:20);

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: Material(
        child: ListView(
          padding: EdgeInsets.zero,
            children: <Widget>[
              const SizedBox(height: 48),
              // MenuItem(
              //   text: '',
              //   icon: Icons.arrow_back,
              //   onClicked: () => selectedItem(context, 0),
              // ),

              MenuItem(
                text: 'Новая идея',
                icon: Icons.home,
                onClicked: () => selectedItem(context, 1),
              ),

              MenuItem(
                text: 'Заметки',
                icon: Icons.bookmark,
                onClicked: () => selectedItem(context, 2),
              ),

              MenuItem(
                text: 'Избранное',
                icon: Icons.star,
                // onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const First_screen()));
                onClicked: () => selectedItem(context, 3),
              ),
              MenuItem(
                text: 'Справочник',
                icon: Icons.bookmark,
                onClicked: () => selectedItem(context, 4),
              ),
            ],
        )
      ),
    );
  }

    Widget MenuItem({
      required String text,
      required IconData icon,
      VoidCallback? onClicked,
    }) {
      return ListTile(
        leading: Icon(icon),
        title: Text(text, style: const TextStyle(fontSize: 22, color: Color(0xFF505770),),),
        onTap: onClicked,
        
    );
  }

  void selectedItem(BuildContext context, int i) {
    switch (i){
      case 3:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const First_screen(),));
      break;
    }
  }
}



/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'pages/first_screen.dart';

// Всплывающее меню:
class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key); */
/*
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.only(top: 18, right: 28),
            color: const Color(0xFFe9edf5),
            child: Column(
                children: [
                  Container(
                    //alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 5, top: 5),
                      child: ElevatedButton(
                          onPressed: (){/*const First_screen()*/;},
                          child: const Text("shoot-it")*/
/*
                      )
                  )
                ])
        )
    );
  }
}*/