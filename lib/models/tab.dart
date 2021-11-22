import 'package:flutter/material.dart';

class MyTab {
  final String name;
  final IconData icon;

  const MyTab({required this.name, required this.icon});
}

enum TabItem { IDEA, NOTES, NOTE }