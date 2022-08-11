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
              title: const Text("jjj"),
              leading: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){

                final route = MaterialPageRoute(builder: (context) => const ListView1Screen());
                Navigator.pushNamed(context,'listView2'); //NAVIGATE TO THE LIST VIEW 1 SCREEN!!! , pushReplacement is the method to replace the current screen with the new one(login)!!!

              },
            );
          },
          separatorBuilder: (context, index){
            return const Divider();
          },
          itemCount: 10
      )
    );
  }
}