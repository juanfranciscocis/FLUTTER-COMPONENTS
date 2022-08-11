import 'package:flutter/material.dart';

import '../Widgets/widgets.dart';
import '../theme/app_theme.dart';

class CardScreen extends StatelessWidget{
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
       title: const Text('CARD'),
     ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          CustomCardType1()
        ],
      ),
    );
  }
}

