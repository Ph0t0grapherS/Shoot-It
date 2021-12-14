import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoot_it/files/pages/first_screen.dart';
import 'package:shoot_it/files/popup_menu.dart';


class SettingsScreen extends StatefulWidget{
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState()=> _SettingsState();
}

class _SettingsState extends State<SettingsScreen>{

//class SettingScreen extends StatelessWidget {
  //const Settings({Key? key}) : super(key: key);

  //цвета для кнопок выбора
  Color _buttonColor1 = const Color(0xFFe9edf5);
  Color _buttonColor2 = const Color(0xFFe9edf5);
  Color _buttonColor21 = const Color(0xFFe9edf5);
  Color _buttonColor22 = const Color(0xFFe9edf5);
  Color _buttonColor23 = const Color(0xFFe9edf5);
  Color _buttonColor24 = const Color(0xFFe9edf5);
  Color _buttonColor25 = const Color(0xFFe9edf5);
  Color _buttonColor26 = const Color(0xFFe9edf5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: MenuButton(),
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          shadowColor: const Color(0x0013143E),
          title: const Text('SHOOT IT',
              style: TextStyle(
                  fontSize: 36,
                  color: Color(0xFF505770),
                  letterSpacing: 3,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'CantoraOne')),
        ),
        body: Center(
          child: Container(
              color: const Color(0xff1d4663),
              child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, //распределение пространства между элементами
                      children: [
                        Container(
                            padding: const EdgeInsets.only(top: 8, bottom: 18),
                            alignment: Alignment.topCenter,
                            child: const Text(
                                "Дополнительные настройки",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFFe6f4ff),
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Some')
                            )
                        ),
                        Container(
                          color: const Color(0xFFe9edf5),
                          height: 3,
                          width: 395,
                        ),
                        Container(
                            padding: const EdgeInsets.only(top: 8),
                            alignment: Alignment.topCenter,
                            width: 393,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                      "Мудборд",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFFe6f4ff),
                                          decoration: TextDecoration.none,
                                          fontFamily: 'Roboto')
                                  ),
                                  IconButton(
                                      color: _buttonColor1, //меняем цвет: один выбранный параметр, остальные - нет
                                      onPressed: () {setState(() {
                                        _buttonColor1 = const Color(0xFF5F7AC7);
                                        _buttonColor2 = const Color(0xFFe6f4ff);
                                      });}, //+ запись переменной для поиска в бд
                                      icon: const Icon(
                                          Icons.brightness_1_rounded,
                                          size: 26)
                                  ),
                                ])
                        ),
                        Container(
                            padding: const EdgeInsets.only(top: 8, bottom: 12),
                            alignment: Alignment.topCenter,
                            width: 393,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                      "Фотография",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFFe6f4ff),
                                          decoration: TextDecoration.none,
                                          fontFamily: 'Roboto')
                                  ),
                                  IconButton(
                                      color: _buttonColor2,
                                      onPressed: () {setState(() {
                                        _buttonColor2 = const Color(0xFF5F7AC7);
                                        _buttonColor1 = const Color(0xFFe6f4ff);
                                      });},
                                      icon: const Icon(
                                          Icons.brightness_1_rounded,
                                          size: 26)
                                  ),
                                ])
                        ),
                        Container(
                          color: const Color(0xFFe9edf5),
                          height: 3,
                          width: 395,
                        ),
                        Container(
                            padding: const EdgeInsets.only(top: 8),
                            alignment: Alignment.topCenter,
                            width: 393,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                      "Портрет",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFFe6f4ff),
                                          decoration: TextDecoration.none,
                                          fontFamily: 'Roboto')
                                  ),
                                  IconButton(
                                      color: _buttonColor21,
                                      onPressed: () {setState(() {
                                        _buttonColor21 = const Color(0xFF5F7AC7);
                                        _buttonColor22 = const Color(0xFFe6f4ff);
                                        _buttonColor23 = const Color(0xFFe6f4ff);
                                        _buttonColor24 = const Color(0xFFe6f4ff);
                                        _buttonColor25 = const Color(0xFFe6f4ff);
                                        _buttonColor26 = const Color(0xFFe6f4ff);
                                      });},
                                      icon: const Icon(
                                          Icons.brightness_1_rounded,
                                          size: 26)
                                  ),
                                ])
                        ),
                        Container(
                            padding: const EdgeInsets.only(top: 8),
                            alignment: Alignment.topCenter,
                            width: 393,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                      "Творческая фотография",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFFe6f4ff),
                                          decoration: TextDecoration.none,
                                          fontFamily: 'Roboto')
                                  ),
                                  IconButton(
                                      color: _buttonColor22,
                                      onPressed: () {setState(() {
                                        _buttonColor22 = const Color(0xFF5F7AC7);
                                        _buttonColor21 = const Color(0xFFe6f4ff);
                                        _buttonColor23 = const Color(0xFFe6f4ff);
                                        _buttonColor24 = const Color(0xFFe6f4ff);
                                        _buttonColor25 = const Color(0xFFe6f4ff);
                                        _buttonColor26 = const Color(0xFFe6f4ff);
                                      });},
                                      icon: const Icon(
                                          Icons.brightness_1_rounded,
                                          size: 26)
                                  ),
                                ])
                        ),
                        Container(
                            padding: const EdgeInsets.only(top: 8),
                            alignment: Alignment.topCenter,
                            width: 393,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                      "Fashion-фотография",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFFe6f4ff),
                                          decoration: TextDecoration.none,
                                          fontFamily: 'Roboto')
                                  ),
                                  IconButton(
                                      color: _buttonColor23,
                                      onPressed: () {setState(() {
                                        _buttonColor23 = const Color(0xFF5F7AC7);
                                        _buttonColor22 = const Color(0xFFe6f4ff);
                                        _buttonColor21 = const Color(0xFFe6f4ff);
                                        _buttonColor24 = const Color(0xFFe6f4ff);
                                        _buttonColor25 = const Color(0xFFe6f4ff);
                                        _buttonColor26 = const Color(0xFFe6f4ff);
                                      });},
                                      icon: const Icon(
                                          Icons.brightness_1_rounded,
                                          size: 26)
                                  ),
                                ])
                        ),
                        Container(
                            padding: const EdgeInsets.only(top: 8),
                            alignment: Alignment.topCenter,
                            width: 393,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                      "Стрит-фотография",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFFe6f4ff),
                                          decoration: TextDecoration.none,
                                          fontFamily: 'Roboto')
                                  ),
                                  IconButton(
                                      color: _buttonColor24,
                                      onPressed: () {setState(() {
                                        _buttonColor24 = const Color(0xFF5F7AC7);
                                        _buttonColor22 = const Color(0xFFe6f4ff);
                                        _buttonColor23 = const Color(0xFFe6f4ff);
                                        _buttonColor21 = const Color(0xFFe6f4ff);
                                        _buttonColor25 = const Color(0xFFe6f4ff);
                                        _buttonColor26 = const Color(0xFFe6f4ff);
                                      });},
                                      icon: const Icon(
                                          Icons.brightness_1_rounded,
                                          size: 26)
                                  ),
                                ])
                        ),
                        Container(
                            padding: const EdgeInsets.only(top: 8),
                            alignment: Alignment.topCenter,
                            width: 393,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                      "Городской пейзаж",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFFe6f4ff),
                                          decoration: TextDecoration.none,
                                          fontFamily: 'Roboto')
                                  ),
                                  IconButton(
                                      color: _buttonColor25,
                                      onPressed: () {setState(() {
                                        _buttonColor25 = const Color(0xFF5F7AC7);
                                        _buttonColor22 = const Color(0xFFe6f4ff);
                                        _buttonColor23 = const Color(0xFFe6f4ff);
                                        _buttonColor24 = const Color(0xFFe6f4ff);
                                        _buttonColor21 = const Color(0xFFe6f4ff);
                                        _buttonColor26 = const Color(0xFFe6f4ff);
                                      });},
                                      icon: const Icon(
                                          Icons.brightness_1_rounded,
                                          size: 26)
                                  ),
                                ])
                        ),
                        Container(
                            padding: const EdgeInsets.only(top: 8),
                            alignment: Alignment.topCenter,
                            width: 393,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                      "Анималистическая фотография",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFFe6f4ff),
                                          decoration: TextDecoration.none,
                                          fontFamily: 'Roboto')
                                  ),
                                  IconButton(
                                      color: _buttonColor26,
                                      onPressed: () {setState(() {
                                        _buttonColor26 = const Color(0xFF5F7AC7);
                                        _buttonColor22 = const Color(0xFFe6f4ff);
                                        _buttonColor23 = const Color(0xFFe6f4ff);
                                        _buttonColor24 = const Color(0xFFe6f4ff);
                                        _buttonColor25 = const Color(0xFFe6f4ff);
                                        _buttonColor21 = const Color(0xFFe6f4ff);
                                      });},
                                      icon: const Icon(
                                          Icons.brightness_1_rounded,
                                          size: 26)
                                  ),
                                ])
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          padding: const EdgeInsets.only(top: 18, bottom: 25),
                          child: OutlinedButton(
                            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const FirstScreen()));},
                            style: OutlinedButton.styleFrom(side: const BorderSide(color: Color(
                                0xFF82AAFF), width: 2)),
                            child: const Text('Применить настройки',
                              style: TextStyle(fontSize: 22,
                                  color: Color(0xFF82AAFF),
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Some'),),
                          ),
                        )
                      ]
                  )
              )
          )
        )
    );
  }
}