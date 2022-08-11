import 'package:flutter/cupertino.dart' show IconData, Widget;
import 'package:flutter/material.dart';

class MenuOption{
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;
  final IconData trailing = Icons.arrow_forward_ios_outlined;

  MenuOption(
      {required this.route,
        required this.icon,
        required this.name,
        required this.screen
      });






}