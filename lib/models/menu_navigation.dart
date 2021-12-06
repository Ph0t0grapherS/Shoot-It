import 'package:flutter/material.dart';
import '../models/tab.dart';
import 'package:shoot_it/files/active_screen.dart';

const Map<TabItem, MyTab> tabs = {
  TabItem.IDEA : const MyTab(name: "Idea", icon: Icons.layers, color: Colors.grey),
  TabItem.SETTINGS : const MyTab(name: "Settings", icon: Icons.settings, color: Colors.grey),
  TabItem.NOTES: const MyTab(name: "Notes", icon: Icons.edit, color: Colors.grey),
  TabItem.FAVORITES: const MyTab(name: "Favorities", icon: Icons.star, color: Colors.grey)
};

class MenuButton extends StatelessWidget {

  const MenuButton({required this.currentTab, required this.onSelectTab});

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    
    // return PopupMenuButton(
    //     itemBuilder: (context) {
    //       return Map<TabItem, MyTab>;
    //     }
    // );

    return BottomNavigationBar(
        selectedItemColor: _colorTabMatching(currentTab),
        selectedFontSize: 13,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentTab.index,
        // пункты меню
        items: [
          _buildItem(TabItem.IDEA),
          _buildItem(TabItem.NOTES),
          _buildItem(TabItem.FAVORITES),
        ],
        onTap: (index) => onSelectTab(
            TabItem.values[index]
        )
    );
  }

  BottomNavigationBarItem _buildItem(TabItem item) {
    return BottomNavigationBarItem(
        icon: Icon(
          _iconTabMatching(item),
          color: _colorTabMatching(item),
        ),
        label: tabs[item]!.name,
    );
  }

  IconData _iconTabMatching(TabItem item) => tabs[item]!.icon;

  // получаем цвет элемента
  Color _colorTabMatching(TabItem item) {
    return currentTab == item ? tabs[item]!.color : Colors.blue;
  }

}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:shoot_it/files/active_screen.dart';

// class CustomPopupMenu {
//   CustomPopupMenu({required this.title, required this.icon});
//   String title;
//   IconData icon;
// }

// class MainActivity extends StatefulWidget {

//   @override
//   _MainActivityState createState() => _MainActivityState();
// }

// List choices = [
//   CustomPopupMenu(title: 'Home', icon: Icons.home),
//   CustomPopupMenu(title: 'Bookmarks', icon: Icons.bookmark),
//   CustomPopupMenu(title: 'Settings', icon: Icons.settings),
// ];

// class _MainActivityState extends State {
//   CustomPopupMenu _selectedChoices = choices[0];
//   void _select(CustomPopupMenu choice) {
//     setState(() {
//       _selectedChoices = choice;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.yellow,
//       appBar: AppBar(
//         title: Text('Popup Menu Button'),
//         actions: [
//           PopupMenuButton(
//             elevation: 3.2,
//             initialValue: choices[1],
//             onCanceled: () {
//               print('You have not chossed anything');
//             },
//             tooltip: 'This is tooltip',
//             onSelected: _select,
//             itemBuilder: (BuildContext context) {
//               return choices.map((CustomPopupMenu choice) {
//                 return PopupMenuItem(
//                   value: choice,
//                   child: Text(choice.title),
//                 );
//               }).toList();
//             },
//           )
//         ],
//       ),
//       body: bodyWidget(),
//     );
//   }
//   bodyWidget() {
//     return Container(
//       child: SelectedOption(choice: _selectedChoices),
//     );
//   }
// }

// class SelectedOption extends StatelessWidget {
//   CustomPopupMenu choice;
//   SelectedOption({Key key, this.choice}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(choice.icon, size: 140.0, color: Colors.white),
//             Text(
//               choice.title,
//               style: TextStyle(color: Colors.white, fontSize: 30),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

