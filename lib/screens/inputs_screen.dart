import 'package:fl_components_new/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_input_field.dart';

class InputScreen extends StatelessWidget{
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>(); //FORM KEY

    final Map<String,String> formValues = {
      'name':'Juan',
      'lastName':'Cisneros',
      'email':'juanfrancistm2011@icloud.com',
      'password':'06012002jF_',
      'role':'admin',
    };


    return Scaffold(
      appBar: AppBar(
        title: Text('Input y Forms'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form( //FORM
            key: myFormKey, //FORM KEY asigned to the form
            child: Column(
              children:  [

                CustomInputField(
                  labelText: 'Primer Nombre',
                  hintText: 'Ingresa tu nombre',
                  icon: Icons.person,
                  helperText: 'Minimo 3 caracteres',
                  initialValue: 'Juan',
                  formProperty: 'name',
                  formValues: formValues,
                ),
                SizedBox(height: 20),
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Ingresa tu apellido',
                  icon: Icons.person,
                  helperText: 'Minimo 3 caracteres',
                  initialValue: 'Cisneros',
                  formValues: formValues,
                  formProperty: 'lastName',
                ),

                SizedBox(height: 20),
                CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Ingresa tu correo',
                  icon: Icons.email,
                  helperText: 'Minimo 3 caracteres',
                  initialValue: 'juanfrancistm2011@icloud.com',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),





                SizedBox(height: 20),

                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Ingresa tu contraseña',
                  icon: Icons.lock,
                  helperText: 'Minimo 3 caracteres',
                  initialValue: '123456',
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,

                ),
                SizedBox(height: 20),

                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'Rol',
                    icon: Icon(Icons.people),
                  ),
                  items: const[
                    DropdownMenuItem(value:'Admin', child: Text('Admin')),
                    DropdownMenuItem(value:'User', child: Text('User')),
                  ],
                  onChanged: (value) {
                    formValues['role'] = value ?? 'User';

                  },//onChanged: (value) { },
                ),

                SizedBox(height: 20),




                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode()); //FocusScope para quitar el foco del teclado
                    if(myFormKey.currentState!.validate() == false){
                      print('Formulario no valido');

                    } else {
                      print('Formulario valido');
                      print(formValues);

                      //show dialog
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Formulario valido'),
                            content: Text(formValues.toString()),
                            actions: <Widget>[
                              FlatButton(
                                child: Text('Ok'),
                                onPressed: () {

                                  Navigator.of(context).pushReplacementNamed('inputs');


                                },
                              ),
                            ],
                          );
                        }
                      );
                    }

                  },
                  child:const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Enviar')),
                  ),
                ),


              ],
            ),
          ),
        ),
      )
    );
  }
}
