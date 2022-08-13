import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget{
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('JF'),
              backgroundColor: Colors.green[800],




            ),
          )
        ],
      ),
      body: Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://tinypng.com/images/social/website.jpg'),
        ),
      ),
    );
  }
}