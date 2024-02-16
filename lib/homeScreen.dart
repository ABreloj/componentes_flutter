import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Componentes del flutters '),
        ),
        body: 
          ListView(
            children: const <Widget> [
              ListTile(
                title: Text('Sulfuro'),
                subtitle: Text('De cloruro'),
                leading: Icon(Icons.input_rounded),
                trailing: Icon(Icons.arrow_right_alt_outlined),
              ),
              Divider(),
              ListTile(
                title: Text('Cloruro'),
                subtitle: Text('de sodio'),
                leading: Icon(Icons.list_alt_sharp),
                trailing: Icon(Icons.arrow_right_alt_outlined),
              ),
              Divider(),
              ListTile(
                title: Text('Acido'),
                subtitle: Text('Sulfurico'),
                leading: Icon(Icons.notification_important),
                trailing: Icon(Icons.arrow_right_alt_outlined),
              )
          ],
         ),
        );
  }
}