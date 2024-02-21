import 'package:flutter/material.dart';
import 'package:practica_3/screens/infinite_list.dart';
import 'package:practica_3/screens/inputs.dart';
import 'package:practica_3/screens/notification.dart';
import 'package:practica_3/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Componentes del flutters '),
        ),
        body: 
          ListView(
            children:  <Widget> [
              ListTile(
                title: Text('Entradas', style: AppTheme.lightTheme.textTheme.headlineLarge),
                subtitle: Text('Recuperar informacion del textfold', style: AppTheme.lightTheme.textTheme.bodySmall),
                leading: const Icon(Icons.input_rounded, color: AppTheme.primaryColor),
                onTap: () {
                  final ruta1 = MaterialPageRoute(builder: (context){
                    return const inputs();
                  });
                  Navigator.push(context, ruta1);
                },
                trailing: const Icon(Icons.arrow_right_alt_outlined, color: AppTheme.secondaryColor,),
              ),
              Divider(),
              ListTile(
                title:  Text('Lista infinita', style: AppTheme.lightTheme.textTheme.headlineLarge),
                subtitle:  Text('Recuperar elementos', style: AppTheme.lightTheme.textTheme.bodySmall),
                leading: const Icon(Icons.list_alt_sharp, color: AppTheme.primaryColor),
                 onTap: () {
                  final ruta2 = MaterialPageRoute(builder: (context){
                    return const InfiniteList();
                  });
                  Navigator.push(context, ruta2);
                },
                trailing: const Icon(Icons.arrow_right_alt_outlined, color: AppTheme.secondaryColor,),
              ),
              Divider(),
              ListTile(
                title: Text('Notificaciones', style: AppTheme.lightTheme.textTheme.headlineLarge),
                subtitle: Text('Mensajes', style: AppTheme.lightTheme.textTheme.bodySmall),
                leading: const Icon(Icons.notification_important, color: AppTheme.primaryColor),
                 onTap: () {
                  final ruta3 = MaterialPageRoute(builder: (context){
                    return const Notifications();
                  });
                  Navigator.push(context, ruta3);
                },
                trailing: const Icon(Icons.arrow_right_alt_outlined, color: AppTheme.secondaryColor,),
              )
          ],
         ),
        );
  }
}