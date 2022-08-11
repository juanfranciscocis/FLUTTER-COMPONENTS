


import 'package:flutter/material.dart';

import '../screens/alert_screen.dart';
import '../screens/card_screen.dart';
import '../screens/home_screen.dart';
import '../screens/listview1_screen.dart';
import '../screens/listview2_screen.dart';

class AppRoutes{

  //DATA MEMBERS
  static const String initialRoute = 'home';

  static  Map<String,Widget Function(BuildContext)>routes= {
    'home': (context) => const HomeScreen(),
    'listView1': (context) => const ListView1Screen(),
    'listView2': (context) => const ListView2Screen(),
    'alert': (context) => const AlertScreen(),
    'card': (context) => const CardScreen(),
  };

  static Route<dynamic> onGenerateRoute (RouteSettings settings){
    return MaterialPageRoute(
        builder: (context)=> const AlertScreen()
    );
  }







}