import 'package:flutter/material.dart';
import 'package:shoot_it/files/pages/favorites_screen.dart';
import 'package:shoot_it/files/pages/first_screen.dart';
import 'package:shoot_it/files/pages/settings_screen.dart';
import 'package:shoot_it/files/pages/view_screen.dart';
import 'package:shoot_it/models/tab.dart';

class TabNavigator extends StatelessWidget {
  const TabNavigator(
      {Key? key, required this.navigatorKey, required this.tabItem})
      : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  //late Widget currentPage = const First_screen();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        Widget currentPage = const First_screen();
        if (tabItem == TabItem.IDEA) {
          currentPage = const First_screen();
        } else if (tabItem == TabItem.SETTINGS) {
          currentPage = const SettingsScreen();        //**
        } else if (tabItem == TabItem.VIEW) {
          currentPage = const ViewScreen();        //**
        } else if (tabItem == TabItem.NOTES) {
          currentPage = const First_screen();          // **
        } else if (tabItem == TabItem.NOTE) {
          currentPage = const First_screen();          //**
        } else if (tabItem == TabItem.FAVORITES) {
          currentPage = const FavoritesScreen();        //**
        }
        return MaterialPageRoute(
          builder: (context) => currentPage,
        );
      },
    );
  }
}