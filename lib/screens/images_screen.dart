import 'package:flutter/material.dart';
import 'package:practica_3/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Imagenes', style: AppTheme.lightTheme.textTheme.headlineLarge),
      ),
      body: ListView(
        children: [
          imageCard(),
          imageWeb(),
        ],
      )
    );
  }

  Card imageCard(){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
      margin: const EdgeInsets.all(20), elevation: 10, child: Column(
        children: [
          SizedBox(height: 400, width: 700, child: ClipRRect( borderRadius: BorderRadius.circular(20), child: const Image(image: AssetImage('assets/img/CodeGeass.jpg'), ))),
          Container(
            padding: const EdgeInsets.all(300),
            child: const Text('Su majestad Lelouch Vi Britania y La reina verde C.C.'),
          )
        ],
      )
      
    );
  }

  Widget imageWeb(){
    return Center(
      child: Image.network("https://images2.alphacoders.com/139/13992.png")
    );
  }
}