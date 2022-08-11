import 'package:fl_components_new/router/app_routes.dart';
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import 'listview1_screen.dart';



class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: const Text('COMPONENTES EN FLUTTER'),
      ),

      body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          itemBuilder: (context, index){
            return ListTile(
              title: Text(AppRoutes.menuOptions[index].name),
              leading: Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.primary,),
              onTap: (){
                Navigator.pushNamed(context, AppRoutes.menuOptions[index].route); //NAVIGATE TO THE SCREEN
              },
              trailing:Icon(AppRoutes.menuOptions[index].trailing),
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