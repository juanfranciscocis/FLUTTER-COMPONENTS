import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class AlertScreen extends StatelessWidget{
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: ElevatedButton(
          /*style: ElevatedButton.styleFrom(
            primary: AppTheme.primary,
            elevation: 0,
            shape: const StadiumBorder()
          ),*/ //GIVING STYLE TO THE ALERT BUTTON
          onPressed: () {

          }, child: Text('Alert'), //ON PRESSED NULL CANCELA EL BOTON!!!!
          
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