
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String hintText;
  final String helperText;
  final String labelText;
  final IconData icon;
  final String initialValue;



  const CustomInputField({
    Key? key, required this.hintText, required this.helperText, required this.labelText, required this.icon, required this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField( //MAS INTERACCIONES DE FORMULARIO
      autofocus: true, //cuando se inicia el formulario se pone el foco en el campo
      initialValue: initialValue, //valor inicial del campo
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
        labelText: labelText, //texto del label
        hintText: hintText, //texto del hint
        icon: Icon(icon), //icono del campo
      ),
    );
  }
}