import 'package:flutter/material.dart';

class inputs extends StatefulWidget {
  const inputs ({super.key});

  @override
  State<inputs> createState() => _inputsState();
}

class _inputsState  extends State<inputs > {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Ventana de entradas'),
    );
  }
}