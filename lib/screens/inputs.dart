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
  bool postreCheck1 = false;
  bool postreCheck2 = false;
  bool postreCheck3 = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Mermelada cosmica 2x1'), ),

      body: ListView(
        children: [ Padding(
          padding: const EdgeInsets.all(19.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
               
               entradaTexto(),
               entradaSwitch(),
               entradaSlider(),
               entradaRadio(),
               Text('Que postres te gustan?', style: AppTheme.lightTheme.textTheme.headlineLarge,),
               entradasCheck(),
                
                  const ElevatedButton(onPressed: null, child: Text('Guardar')),
              
            ],
          ),
        ),
        ],
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

  Row entradasCheck(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Helado',
          style: AppTheme.lightTheme.textTheme.headlineSmall,
          ),
          Checkbox(value: postreCheck1, onChanged: (value){
            setState(() {
              postreCheck1 = value!;
            });
          }),
          Text(
          'Chocoflan',
          style: AppTheme.lightTheme.textTheme.bodySmall,
          ),
          Checkbox(value: postreCheck2, onChanged: (value){
            setState(() {
              postreCheck2 = value!;
            });
          }),
          Text(
          'Helado',
          style: AppTheme.lightTheme.textTheme.bodySmall,
          ),
          Checkbox(value: postreCheck3, onChanged: (value){
            setState(() {
              postreCheck3 = value!;
            });
          }),
          Text(
          'Pastel de chocolate con choclate',
          style: AppTheme.lightTheme.textTheme.bodySmall,
          ),
          
      ],
    );
  }

}