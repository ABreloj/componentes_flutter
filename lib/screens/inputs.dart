import 'package:flutter/material.dart';
import 'package:practica_3/theme/app_theme.dart';

class inputs extends StatefulWidget {
  const inputs ({super.key});

  @override
  State<inputs> createState() => _inputsState();
}

class _inputsState  extends State<inputs > {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text('Ventana de entradas', 
         style: AppTheme.lightTheme.textTheme.headlineLarge),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: null, child: Text('Retroceder', style: AppTheme.lightTheme.textTheme.headlineLarge,)),
            ElevatedButton(onPressed: null, child: Text('DataScreen')),
          ],
         )
      ],
    );
  }
}