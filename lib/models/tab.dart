import 'package:flutter/material.dart';

class MyTab {
  final String name;
  final IconData icon;
  final MaterialColor color;

  const MyTab({required this.name, required this.icon, required this.color});
}

enum TabItem { IDEA, NOTES, NOTE, SETTINGS, VIEW, FAVORITES }