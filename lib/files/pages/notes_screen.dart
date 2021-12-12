import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Notes extends StatelessWidget {
  const Notes ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey.shade900,
            shadowColor: const Color(0x0013143E),
            title: const Text(
              'Мои заметки',
              style: TextStyle(
                fontSize: 36,
                color: Color(0xFF505770),
                letterSpacing: 3,
                fontWeight: FontWeight.w800, fontFamily: 'CantoraOne')
            )
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(5),
              color: const Color(0xff1d4663),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    noteInList(title: 'Зимняя апатия', text: 'Ночь. Улица. Фонарь. Аптека. Бессмысленный и тусклый свет. Живи ещё хоть четверть века, всё будет так, исхода нет.', onClicked: (){}),
                    noteInList(title: 'Скучное название', text: 'ыпктаипафнуциа', onClicked: (){})
                  ])
            )
          )
    );
  }


  Widget noteInList({
    required String title,
    required String text,
    VoidCallback? onClicked,
  }) {
    return TextButton(
      child: Container(
          padding: const EdgeInsets.all(15),
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
            color: const Color(0xff296671),
            border: Border.all(color: const Color(0xffd5e7f1)),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 22,
                      color: Color(0xFFDADDEA),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Some'),
                  textAlign: TextAlign.left,
                  softWrap: false,
              ),
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFFDADDEA),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Some'),
                  textAlign: TextAlign.left,
                  softWrap: false,
                )
          ]),),
          onPressed: onClicked,
    );
  }
}