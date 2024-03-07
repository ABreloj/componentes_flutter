import 'package:flutter/material.dart';
import 'package:practica_3/theme/app_theme.dart';

class inputs extends StatefulWidget {
  const inputs ({super.key});

  @override
  State<inputs> createState() => _inputsState();
}

class _inputsState  extends State<inputs > {
  bool valueSwitch = false;
  double sliderValue = 0.0;
  int foodRadio = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Mermelada cosmica 2x1'), ),

      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
             
             entradaTexto(),
             entradaSwitch(),
             entradaSlider(),
             entradaRadio(),
              
                const ElevatedButton(onPressed: null, child: Text('Guardar')),
            
          ],
        ),
      ),
      bottomNavigationBar:  BottomNavigationBar(items: const [BottomNavigationBarItem(icon: Icon(Icons.home), label: 'inicio'), BottomNavigationBarItem(icon: Icon(Icons.next_plan), label: 'Datos',)],),
    );
  }

  dynamic entradaTexto() => TextField(style:AppTheme.lightTheme.textTheme.headlineMedium, decoration: InputDecoration(border: const UnderlineInputBorder(), labelText: 'Name', labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,));

  Row entradaSwitch() {
    return Row(
      children: [
        const FlutterLogo(),
        Text(
          'Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Switch(
          value: valueSwitch,
          onChanged: (value){
            setState((){
              valueSwitch = value;
            });
          }),
      ],
    );
  }

  Column entradaSlider(){
    return Column(
      children: [
        Text(
          'Por que te disgusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(min: 0.0, max: 300.0, value: sliderValue, divisions: 10, label: '${sliderValue.round()}', 
          onChanged: (value) {
           setState(() {
           sliderValue = value; 
           print('valor del slider: $sliderValue');
        });
        }), 
      ],
    );
  }

  Column entradaRadio(){
    return Column(
      children: [
        Text(
          'Desarrollo Movil',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title: Text(
            'Ensalada',
            style: AppTheme.lightTheme.textTheme.bodySmall,
          ),
          leading: Radio(
            value: 1,
            groupValue: foodRadio,
            onChanged: (value){
              setState(() {
                foodRadio = value!;
                //print('Comida elegida: $foodRadio');
              });
              
            },
          ),
        ),


        ListTile(
          title: Text(
            'Pizza',
            style: AppTheme.lightTheme.textTheme.bodySmall,
          ),
          leading: Radio(
            value: 2,
            groupValue: foodRadio,
            onChanged: (value){
              setState(() {
                foodRadio = value!;
                //print('Comida elegida: $foodRadio');
              });
              
            },
          ),
        ),
      ],
    );
  }
}