import 'package:flutter/material.dart';
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
                title: Text('Sulfuro', style: AppTheme.lightTheme.textTheme.headlineLarge),
                subtitle: Text('De cloruro', style: AppTheme.lightTheme.textTheme.bodySmall),
                leading: const Icon(Icons.input_rounded, color: AppTheme.primaryColor),
                trailing: const Icon(Icons.arrow_right_alt_outlined, color: AppTheme.secondaryColor,),
              ),
              Divider(),
              ListTile(
                title:  Text('Cloruro', style: AppTheme.lightTheme.textTheme.headlineLarge),
                subtitle:  Text('de sodio', style: AppTheme.lightTheme.textTheme.bodySmall),
                leading: const Icon(Icons.list_alt_sharp, color: AppTheme.primaryColor),
                trailing: const Icon(Icons.arrow_right_alt_outlined, color: AppTheme.secondaryColor,),
              ),
              Divider(),
              ListTile(
                title: Text('Acido', style: AppTheme.lightTheme.textTheme.headlineLarge),
                subtitle: Text('Sulfurico', style: AppTheme.lightTheme.textTheme.bodySmall),
                leading: const Icon(Icons.notification_important, color: AppTheme.primaryColor),
                trailing: const Icon(Icons.arrow_right_alt_outlined, color: AppTheme.secondaryColor,),
              )
          ],
         ),
        );
  }
}