import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget{
  const ListView2Screen({Key? key}) : super(key: key);


  final options = const['OPTION 1','OPTION 2','OPTION 3'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( //CANT BE CONST, BECAUSE OF THE CHILD WIDGETS!!!
        title: const Text('ListView Tipo 2'),
      ),
      body: ListView.separated( //SEPARATED IS THE METHOD TO CREATE A LIST VIEW WITH SEPARATED ITEMS!!!,BUILDER IS THE METHOD TO CREATE THE LIST TILES WITHOUT SEPARATOR!!!
        itemBuilder: (context, index){ //WHERE YOU SHOW EVERYTHING!!!
          return ListTile(
            title: Text(options[index]), //MAPS THE OPTIONS ARRAY TO THE LIST TILES!!!
            trailing: const Icon(Icons.arrow_forward_ios_outlined), //THE ICONS ARE THE ARROWS!!!
            onTap:  (){
            }, //THE ONTAP IS THE ONCLICK LISTENER!!!
          );
        },
        separatorBuilder: (context, index){ //WHERE YOU SHOW THE SEPARATOR BETWEEN THE ITEMS!!!
          return const Divider();
        },
        itemCount: options.length, //THE LENGHT OF THE OPTIONS ARRAY!!!
      )
    );
  }
}