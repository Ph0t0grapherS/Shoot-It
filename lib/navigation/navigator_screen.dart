
import 'package:flutter/material.dart';
import 'package:shoot_it/files/pages/first_screen.dart';
import 'package:shoot_it/files/pages/settings_screen.dart';
import '../navigation/tab.dart';
//import 'package:shoot_it/files/active_screen.dart';

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
          currentPage = const First_screen();        //**
        } else if (tabItem == TabItem.NOTES) {
          currentPage = const First_screen();          // **
        } else if (tabItem == TabItem.NOTE) {
          currentPage = const First_screen();          //**
        } else if (tabItem == TabItem.FAVORITES) {
          currentPage = const First_screen();        //**
        }
        return MaterialPageRoute(
          builder: (context) => currentPage,
        );
      },
    );
  }
}