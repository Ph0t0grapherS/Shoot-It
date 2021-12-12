// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:shoot_it/files/pages/favorites_screen.dart';
// import 'package:shoot_it/files/pages/first_screen.dart';
// //import 'package:shoot_it/files/pages/favorites_screen.dart';
// import 'package:shoot_it/navigation/tab.dart';
// import 'package:shoot_it/navigation/navigator_screen.dart';
// import 'package:shoot_it/files/popup_menu.dart';

// class ActiveScreen extends StatefulWidget {
//   const ActiveScreen({Key? key}) : super(key: key);

// //   @override
// //   State<ActiveScreen> createState() => _ActiveScreenState();
// // }

// // class _ActiveScreenState extends State<ActiveScreen> {
// //   final _navigatorKeys = {
// //     TabItem.IDEA: GlobalKey<NavigatorState>(),
// //     TabItem.SETTINGS: GlobalKey<NavigatorState>(),
// //     TabItem.VIEW: GlobalKey<NavigatorState>(),
// //     TabItem.NOTES: GlobalKey<NavigatorState>(),
// //     TabItem.NOTE: GlobalKey<NavigatorState>(),
// //     TabItem.FAVORITES: GlobalKey<NavigatorState>(),
// //   };

// //   var _currentTab = TabItem.IDEA;

// //   void _selectTab(TabItem tabItem) {
// //     setState(() => _currentTab = tabItem);
// //   }

// //   Widget _buildOffstageNavigator(TabItem tabItem) {
// //     return Offstage(
// //       offstage: _currentTab != tabItem,
// //       child: TabNavigator(
// //         navigatorKey: _navigatorKeys[tabItem]!,
// //         tabItem: tabItem,
// //       ),
// //     );
// //   }

//   Widget build(BuildContext context) {
//     return

//         // WillPopScope(
//         //   onWillPop: () async {
//         //   if (_currentTab != TabItem.IDEA) {
//         //     if (_currentTab != TabItem.SETTINGS) {
//         //       if (_currentTab != TabItem.VIEW) {
//         //         if (_currentTab != TabItem.FAVORITES) {
//         //           if (_currentTab == TabItem.NOTES) {
//         //             _selectTab(TabItem.NOTE);
//         //           }
//         //         } else {
//         //           _selectTab(TabItem.FAVORITES);
//         //         }
//         //       } else {
//         //         _selectTab(TabItem.VIEW);
//         //       }
//         //     } else {
//         //       _selectTab(TabItem.SETTINGS);
//         //     }
//         //     return false;
//         //   } else {
//         //       return true;
//         //     }
//         //   },
//         //),
//         Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey.shade900,
//         shadowColor: const Color(0x0013143E),
//         title: const Text('SHOOT IT',
//             style: TextStyle(
//                 fontSize: 36,
//                 color: Color(0xFF505770),
//                 letterSpacing: 3,
//                 fontWeight: FontWeight.w800,
//                 fontFamily: 'CantoraOne')),
//       ),

//       // Stack(children: <Widget>[
//       //   _buildOffstageNavigator(TabItem.IDEA),
//       //   _buildOffstageNavigator(TabItem.SETTINGS),
//       //   _buildOffstageNavigator(TabItem.VIEW),
//       //   _buildOffstageNavigator(TabItem.NOTES),
//       //   _buildOffstageNavigator(TabItem.NOTE),
//       //   _buildOffstageNavigator(TabItem.FAVORITES),
//       // ]),
//       drawer: MenuButton(),
//     );
//   }

//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }
