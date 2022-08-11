import 'package:fl_components_new/router/app_routes.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes:AppRoutes.routes, //ROUTES ARE THE WAY TO NAVIGATE BETWEEN SCREENS!!!,
      onGenerateRoute: AppRoutes.onGenerateRoute, //ON GENERATE ROUTE IS THE WAY TO NAVIGATE BETWEEN SCREENS!!!,;
    );
  }




}