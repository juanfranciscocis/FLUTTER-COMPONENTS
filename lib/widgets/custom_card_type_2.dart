import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCard2 extends StatelessWidget{

  //DATA MEMEBERS
  final String imageURL;
  final String? name ;

  //CONSTRUCTOR

  const CustomCard2(
      {
        Key? key,
        required this.imageURL,
        this.name
      }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //  BORDES REDONDOS
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      //SHADOW
        elevation: 20,
        shadowColor: AppTheme.primary.withOpacity(0.2), //color of the elevation
        child: Column(
            children:  [

              FadeInImage(
                placeholder: const AssetImage('assets/jar-loading.gif'), //loading image (SOME TIME WE NEED TO DO A FLUTTER CLEAN)
                image: NetworkImage(imageURL), //image from the internet
                width: double.infinity, //width of the card
                height: 230, //height of the card
                fit: BoxFit.cover, //fit the image in the card
                //fadeInDuration: const Duration(milliseconds: 200), //duration of the fade in animation
              ),

              if(name != null)
                Container(
                  alignment: AlignmentDirectional.center , //ALIGMENT THE TEXT IN THE CARD
                  padding: const EdgeInsets.all(20),
                  child: Text(name ?? 'NO TITLE'),
                )


            ]
        )
    );
  }
}