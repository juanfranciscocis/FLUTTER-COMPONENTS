import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
            children: [
              const ListTile(
                title: Text('TITLE'),
                leading: Icon(Icons.account_circle, color: AppTheme.primary,),
                subtitle: Text('Hola mundo, soy un subtitulo'),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){},child: Text('Cancel'),style: TextButton.styleFrom(primary: Colors.green),),
                    TextButton(onPressed: (){}, child: Text('Ok'))

                  ],
                ),
              )
            ]
        )
    );
  }
}