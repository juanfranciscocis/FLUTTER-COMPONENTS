import 'package:fl_components_new/router/app_routes.dart';
import 'package:fl_components_new/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  //CONSTRUCTOR
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false, //HIDE DEBUG BANNER
      title: 'Material App', //TITLE OF THE APP
      initialRoute: AppRoutes.initialRoute, //INITIAL ROUTE
      routes:AppRoutes.getAppRoutes(), //ROUTES
      onGenerateRoute: AppRoutes.onGenerateRoute, //ON GENERATE ROUTE IS THE WAY TO NAVIGATE BETWEEN SCREENS!!!
      theme: AppTheme.lightTheme,
    );
  }




}