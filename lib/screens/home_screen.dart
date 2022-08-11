import 'package:fl_components_new/router/app_routes.dart';
import 'package:flutter/material.dart';

import 'listview1_screen.dart';



class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: const Text('COMPONENTES EN FLUTTER'),
        elevation: 0.0,
      ),

      body: ListView.separated(
          itemBuilder: (context, index){
            return ListTile(
              title: Text(AppRoutes.menuOptions[index].name),
              leading: Icon(AppRoutes.menuOptions[index].icon),
              onTap: (){
                Navigator.pushNamed(context, AppRoutes.menuOptions[index].route); //NAVIGATE TO THE SCREEN
              },
            );
          },
          separatorBuilder: (context, index){
            return const Divider();
          },
          itemCount: AppRoutes.menuOptions.length
      )
    );
  }
}