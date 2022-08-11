import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget{
  const ListView1Screen({Key? key}) : super(key: key);


  final options = const['OPTION 1','OPTION 2','OPTION 3'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( //CANT BE CONST, BECAUSE OF THE CHILD WIDGETS!!!
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options.map((option) => ListTile(
            title: Text(option), //MAPS THE OPTIONS ARRAY TO THE LIST TILES!!!
            trailing: const Icon(Icons.arrow_forward_ios_outlined), //THE ICONS ARE THE ARROWS!!!
          )),
        ],
      )
    );
  }
}