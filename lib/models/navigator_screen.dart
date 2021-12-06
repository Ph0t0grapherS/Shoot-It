import 'package:flutter/material.dart';
import 'package:shoot_it/files/pages/favorites_screen.dart';
import 'package:shoot_it/files/pages/first_screen.dart';
import '../models/tab.dart';


class TabNavigator extends StatelessWidget {
  const TabNavigator(
      {Key? key, required this.navigatorKey, required this.tabItem})
      : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        Widget currentPage;
        if (tabItem == TabItem.IDEA) {
          currentPage = const First_screen();
        } else if (tabItem == TabItem.FAVORITES) {
          currentPage = const FavoritesScreen();          
        } else {
          currentPage = const First_screen();          
        }
        return MaterialPageRoute(
          builder: (context) => currentPage,
        );
      },
    );
  }
}