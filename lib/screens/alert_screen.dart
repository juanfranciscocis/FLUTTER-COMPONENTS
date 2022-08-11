
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class AlertScreen extends StatelessWidget{
  const AlertScreen({Key? key}) : super(key: key);


  void displayDialogIOS(BuildContext context){

    showCupertinoDialog(
      context: context,
      builder: (context){
        return CupertinoAlertDialog(
          title: Text('Alerta Creada'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Se ha creado la alerta correctamente'),
              Text('Puedes verla en la sección de alertas'),
              Image(image: AssetImage('assets/jar-loading.gif'), width: 500, height: 200,)
            ],
          ),
            actions:[
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text('OK')),
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text('CANCELAR'))
            ]

        );
      }
    );

  }


  void displayDialog(BuildContext context){

    showDialog(
      barrierDismissible: true,
        context: context, 
        builder: (context){
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5,
            title: Text('ALERTA CREADA'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Se ha creado la alerta correctamente'),
                Text('Puedes verla en la sección de alertas'),
                Image(image: AssetImage('assets/jar-loading.gif'), width: 500, height: 200,)
              ],
            ),

              actions:[
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text('OK'))
              ]

          );
        }
    );



  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      /*body: Center(
        //ANDROID BUTTON
        child: ElevatedButton(
          *//*style: ElevatedButton.styleFrom(
            primary: AppTheme.primary,
            elevation: 0,
            shape: const StadiumBorder()
          ),*//* //GIVING STYLE TO THE ALERT BUTTON
          onPressed: () {
            displayDialogIOS(context);
          }, child: Text('Alert'), //ON PRESSED NULL CANCELA EL BOTON!!!!
          
        ),
      ),*/


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                displayDialog(context);
              }, child: Text('Alert ANDROID'),
            ),
            ElevatedButton(
              onPressed: () {
                displayDialogIOS(context);
              }, child: Text('Alert iOS'),
            ),
            ElevatedButton(
                onPressed: ()=>Platform.isAndroid ? displayDialog(context) : displayDialogIOS(context),
                child: Text('ALERT PLATFORM'),
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        onPressed: (){
          //return to home screen
          Navigator.of(context).pop();
        }
      ),
    );
  }
}