import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoot_it/models/tab.dart';
import 'package:shoot_it/models/navigator_screen.dart';
//import 'package:shoot_it/models/menu_navigation.dart';

class ActiveScreen extends StatefulWidget {
  const ActiveScreen({Key? key}) : super(key: key);

  @override
  State<ActiveScreen> createState() => _ActiveScreenState();
}

class _ActiveScreenState extends State<ActiveScreen> {

  /*late CustomPopupMenu _selectedChoices = choices[0];

  void _select(CustomPopupMenu choice) {
    setState(() {
      _selectedChoices = choice;
    });
  }*/

  final _navigatorKeys = {
    TabItem.IDIA: GlobalKey<NavigatorState>(),
    TabItem.NOTES: GlobalKey<NavigatorState>(),
    TabItem.NOTE: GlobalKey<NavigatorState>(),
  };

  /*List choices = [
    CustomPopupMenu(title: 'Home', icon: Icons.home),
    CustomPopupMenu(title: 'Bookmarks', icon: Icons.bookmark),
    CustomPopupMenu(title: 'Settings', icon: Icons.settings),
  ];*/

  var _currentTab = TabItem.IDIA;

  void _selectTab(TabItem tabItem) {
    setState(() => _currentTab = tabItem);
  }


  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem]!,
        tabItem: tabItem,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_currentTab != TabItem.IDIA) {
          if (_currentTab != TabItem.NOTES) {
              _selectTab(TabItem.NOTE);
            } else {
              _selectTab(TabItem.NOTES);
            }
          return false;}
          else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blueGrey.shade900,
            shadowColor: const Color(0x0013143E),
            title: const Text(
                'SHOOT IT',
                style: TextStyle(fontSize: 36,
                    color: Color(0xFF505770),
                    letterSpacing: 3,
                    fontWeight: FontWeight.w800, fontFamily: 'CantoraOne')
            ),
            actions: [
              Container(
                  padding: const EdgeInsets.only(right: 30),
                  child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                      Icons.menu_rounded,
                      color: Color(0xFFe9edf5),
                      size: 42)
              )
              )
              /*PopupMenuButton(
                elevation: 3.2,
                initialValue: choices[1],
                onCanceled: () {}
              )*/
            ]),
    //body: bodyWidget(),

        body: Stack(children: <Widget>[
          _buildOffstageNavigator(TabItem.IDIA),
          _buildOffstageNavigator(TabItem.NOTES),
          _buildOffstageNavigator(TabItem.NOTE),
        ]),
    )
    );
  }
}
  /*bodyWidget() {
    return SelectedOption(choice: _selectedChoices);
  }*/