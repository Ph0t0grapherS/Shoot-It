import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoot_it/models/menu_navigation.dart';
//import 'package:shoot_it/files/pages/favorites_screen.dart';
import 'package:shoot_it/models/tab.dart';
import 'package:shoot_it/models/navigator_screen.dart';
import 'package:shoot_it/models/navigator_screen.dart';

class ActiveScreen extends StatefulWidget {
  const ActiveScreen({Key? key}) : super(key: key);

  @override
  State<ActiveScreen> createState() => _ActiveScreenState();
}

class _ActiveScreenState extends State<ActiveScreen> {

  final _navigatorKeys = {
    TabItem.IDEA: GlobalKey<NavigatorState>(),
    TabItem.SETTINGS: GlobalKey<NavigatorState>(),
    TabItem.VIEW: GlobalKey<NavigatorState>(),
    TabItem.NOTES: GlobalKey<NavigatorState>(),
    TabItem.NOTE: GlobalKey<NavigatorState>(),
    TabItem.FAVORITES: GlobalKey<NavigatorState>(),
  };

  var _currentTab = TabItem.IDEA;

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
        if (_currentTab != TabItem.IDEA) {
          if (_currentTab == TabItem.SETTINGS) {
            _selectTab(TabItem.IDEA);
          }
          if (_currentTab == TabItem.VIEW) {
            _selectTab(TabItem.IDEA);
          }
          if (_currentTab != TabItem.FAVORITES) {
            _selectTab(TabItem.IDEA);
          }
          if (_currentTab == TabItem.NOTES) {
            _selectTab(TabItem.IDEA);
          }
          if (_currentTab == TabItem.NOTE) {
            _selectTab(TabItem.NOTES);
          }
          return false;
        } else {
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
        ),
        
        body: Stack(children: <Widget>[
          _buildOffstageNavigator(TabItem.IDEA),
          _buildOffstageNavigator(TabItem.VIEW),
          _buildOffstageNavigator(TabItem.SETTINGS),
          _buildOffstageNavigator(TabItem.FAVORITES),
          _buildOffstageNavigator(TabItem.NOTES),
          _buildOffstageNavigator(TabItem.NOTE),
        ]),
        
        bottomNavigationBar: MenuButton(
                    currentTab: _currentTab,
                    onSelectTab: _selectTab,
        )
      ),    
    );
  }
}