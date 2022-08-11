import 'package:fl_components_new/widgets/custom_card_type_2.dart';
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
        padding: const EdgeInsets.all(20),
        children: [
          CustomCardType1(),
          SizedBox(height: 20,), //SPACE BETWEEN THE CARDS
          CustomCard2(name: 'APPLE',imageURL: 'https://media.idownloadblog.com/wp-content/uploads/2022/03/Apple-peek-performance-iPhone-event-wallpaper.png',),

          SizedBox(height: 20,), //SPACE BETWEEN THE CARDS
          CustomCard2(imageURL: 'https://s1.eestatic.com/2022/06/07/elandroidelibre/aplicaciones/678442644_224915294_1706x1701.jpg',),

          SizedBox(height: 20,), //SPACE BETWEEN THE CARDS
          CustomCard2(imageURL: 'https://www.xda-developers.com/files/2022/01/Wallpaper_010.jpg',),

          SizedBox(height: 20,), //SPACE BETWEEN THE CARDS
          CustomCard2(name: 'WALPAPER',imageURL: 'https://www.androidguys.com/wp-content/uploads/2015/12/Wave-Wallpapers-1.jpg',),


          SizedBox(height: 20,), //SPACE BETWEEN THE CARDS
          CustomCard2(imageURL: 'https://mobcup.net/w/zu04ojo5',),

        ],
      ),
    );
  }
}

