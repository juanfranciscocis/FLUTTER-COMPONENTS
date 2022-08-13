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
                validator: (value){ //validacion del campo
                  if(value == null){
                    return 'Campo obligatorio';
                  }
                  return value.length < 8 ? 'Minimo 8 caracteres' : null; //si el valor es menor a 8 caracteres devuelve un mensaje de error
                },
                autovalidateMode: AutovalidateMode.onUserInteraction, //validacion automatica al interactuar con el campo
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  hintText: 'Ingrese su nombre',
                  icon: Icon(Icons.person),
                ),

              )

            ],
          ),
        ),
      )
    );
  }
}