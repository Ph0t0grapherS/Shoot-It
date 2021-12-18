import 'package:flutter/material.dart';

class MyTab {
  final String name;
  final IconData icon;

  const MyTab({this.name, this.icon});
}

enum TabItem { IDEA, SETTINGS, VIEW, NOTES, NOTE, FAVORITES }