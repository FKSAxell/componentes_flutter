import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = List<Widget>();
    for (String str in opciones) {
      final tempWidget = ListTile(
        title: Text(str),
      );
      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + "!"),
            subtitle: Text("Esto es un subtitulo"),
            leading: Icon(Icons.chat),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
