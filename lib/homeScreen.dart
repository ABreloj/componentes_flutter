import 'package:flutter/material.dart';

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
                title: Text('Sulfuro', style: Theme.of(context).textTheme.headlineLarge),
                subtitle: Text('De cloruro', style: Theme.of(context).textTheme.bodySmall),
                leading: const Icon(Icons.input_rounded),
                trailing: const Icon(Icons.arrow_right_alt_outlined),
              ),
              Divider(),
              ListTile(
                title:  Text('Cloruro', style: Theme.of(context).textTheme.headlineLarge),
                subtitle:  Text('de sodio', style: Theme.of(context).textTheme.bodySmall),
                leading: const Icon(Icons.list_alt_sharp),
                trailing: const Icon(Icons.arrow_right_alt_outlined),
              ),
              Divider(),
              ListTile(
                title: Text('Acido', style: Theme.of(context).textTheme.headlineLarge),
                subtitle: Text('Sulfurico', style: Theme.of(context).textTheme.bodySmall),
                leading: const Icon(Icons.notification_important),
                trailing: const Icon(Icons.arrow_right_alt_outlined),
              )
          ],
         ),
        );
  }
}