import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Seis',
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Seis'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comonentes temp'),
      ),
      body: ListView(
        // children: _crearItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

  // List<Widget> _crearItems() {
  //   List<Widget> lista = new List<Widget>();

  //   for (String opt in opciones) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );

  //     lista..add(tempWidget)..add(Divider());
  //   }

  //   return lista;
  // }

  List<Widget> _crearItemsCorta() {
    return opciones.map((el) {
      return Column(
        children: [
          ListTile(
            title: Text(el + '!'),
            subtitle: Text('Cualquer Cosa'),
            leading: Icon(Icons.android_rounded),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
