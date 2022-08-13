import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget{
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input y Forms'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              TextFormField( //MAS INTERACCIONES DE FORMULARIO
                autofocus: true, //cuando se inicia el formulario se pone el foco en el campo
                initialValue: 'Juan', //valor inicial del campo
                textCapitalization: TextCapitalization.words, //capitalizacion de texto
                onChanged: (value){ //cuando cambia el valor del campo
                  print(value); //imprime el valor del campo
                },

              )

            ],
          ),
        ),
      )
    );
  }
}