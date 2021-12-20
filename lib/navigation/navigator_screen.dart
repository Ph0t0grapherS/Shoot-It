import 'package:flutter/material.dart';
import 'package:shoot_it/pages/favorites_screen.dart';
import 'package:shoot_it/pages/first_screen.dart';
import 'package:shoot_it/pages/notes_screen.dart';
import 'package:shoot_it/pages/settings_screen.dart';
//import 'package:shoot_it/pages/view_screen.dart';
import 'tab.dart';


class TabNavigator extends StatelessWidget {
  const TabNavigator(
      {key, this.navigatorKey, this.tabItem})
      : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        Widget currentPage = const FirstScreen();
        if (tabItem == TabItem.IDEA) {
          currentPage = const FirstScreen();
        } else if (tabItem == TabItem.SETTINGS) {
          currentPage = const SettingsScreen();        //**
       /* } else if (tabItem == TabItem.VIEW) {
          currentPage = const ViewScreen('i0'); */       //**
        } else if (tabItem == TabItem.NOTES) {
          currentPage = Notes();          // **
        } else if (tabItem == TabItem.NOTE) {
          currentPage = const FirstScreen();          //**
        } else if (tabItem == TabItem.FAVORITES) {
          currentPage = const FavoritesScreen();
        } else {
          currentPage = const FirstScreen();
        }
        return MaterialPageRoute(
          builder: (context) => currentPage,
        );
      },
    );
  }
}