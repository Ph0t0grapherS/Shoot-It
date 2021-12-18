import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoot_it/pages/favorites_screen.dart';
import 'package:shoot_it/pages/first_screen.dart';
import 'package:shoot_it/pages/notes_screen.dart';

class MenuButton extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal:20);

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: Material(
        child: ListView(
          padding: EdgeInsets.zero,
            children: <Widget>[
              const SizedBox(height: 48),
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
                onClicked: () => selectedItem(context, 3),
              ),
            ],
        )
      ),
    );
  }

    // ignore: non_constant_identifier_names
    Widget MenuItem({
      String text,
      IconData icon,
      VoidCallback onClicked,
    }) {
      return ListTile(
        leading: Icon(icon),
        title: Text(text, style: const TextStyle(fontSize: 22, color: Color(0xFF505770),),),
        onTap: onClicked,
        
    );
  }

  void selectedItem(BuildContext context, int i) {
    switch (i){
      case 1:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FirstScreen()));
      break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Notes()));
      break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FavoritesScreen()));
      break;
    }
  }
}

