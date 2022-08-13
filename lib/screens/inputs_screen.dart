import 'package:flutter/material.dart';

import '../widgets/custom_input_field.dart';

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
            children: const [

              CustomInputField(
                labelText: 'Primer Nombre',
                hintText: 'Ingresa tu nombre',
                icon: Icons.person,
                helperText: 'Minimo 3 caracteres',
                initialValue: 'Juan',
              ),
              SizedBox(height: 20),
              CustomInputField(
                labelText: 'Apellido',
                hintText: 'Ingresa tu apellido',
                icon: Icons.person,
                helperText: 'Minimo 3 caracteres',
                initialValue: 'Cisneros',
              ),


            ],
          ),
        ),
      )
    );
  }
}
