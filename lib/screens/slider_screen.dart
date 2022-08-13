import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class SliderScreen extends StatefulWidget{
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _isSliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Sliders And Checks'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Checkbox(onChanged: (bool? value) {
              setState(() {
                _isSliderEnabled = value??true;
              });
            },
              value: _isSliderEnabled,
            ),

            SizedBox(height: 10,),
            
            CheckboxListTile(
              value: _isSliderEnabled,
              onChanged: (bool? value) {
              setState(() {
                _isSliderEnabled = value??true;
              });
            },
              title: Text('Enable Slider'),
              activeColor: Colors.green,
            ),

            SizedBox(height: 10,),

            Switch.adaptive(
                value: _isSliderEnabled,
                onChanged: (bool? value) {
                  setState(() {
                    _isSliderEnabled = value??true;
                  });
                }
            ),
            SizedBox(height: 10,),

            SwitchListTile.adaptive(
                value: _isSliderEnabled,
                onChanged: (bool? value) {
                  setState(() {
                    _isSliderEnabled = value??true;
                  });
                },
              title: Text('Enable Slider'),
              //activeColor: Colors.green,
            ),

            SizedBox(height: 10,),

            AboutListTile(
              icon: Icon(Icons.info),
              child: Text('About'),
              applicationName: 'Componentes En Flutter',
              applicationVersion: '1.0.0',
              applicationIcon: FlutterLogo(),
              applicationLegalese: 'MIT License',
            ),

            SizedBox(height: 10,),

            Slider( //SLIDER WITH ADAPTIVE STYLE (ios and android)
              min: 50, //MINIMO
              max: 400, //MAXIMO
              value: _sliderValue, //VALOR INICIAL
              onChanged: _isSliderEnabled? (value){ //ON CHANGED
                setState(() {
                  _sliderValue = value;
                });

              }:null,
              activeColor: AppTheme.primary,
            ),
            SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.all(10),
                child: Image(
                  image: NetworkImage('https://www.themarysue.com/wp-content/uploads/2016/03/apple-logo-flickr.jpg'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                )
            )










          ]
        ),
      ),
    );
  }
}