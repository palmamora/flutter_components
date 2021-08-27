import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/pages/alert_page.dart';
import 'package:flutter_application_2/src/providers/menu_provider.dart';
import 'package:flutter_application_2/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    /*
    menuProvider.cargarData().then((opciones) {
      print(opciones);
    });
    */
    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: _crearListaItems(snapshot.data, context),
          );
        });
  }

  List<Widget> _crearListaItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> opts = [];

    data?.forEach((element) {
      opts
        ..add(ListTile(
          title: Text(element['texto']),
          leading: getIcon(element['icon']),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.blue,
          ),
          onTap: () {
            //final route = MaterialPageRoute(builder: (context) => AlertPage());
            //Navigator.push(context, route);
            Navigator.pushNamed(context, element['ruta']);
          },
        ))
        ..add(Divider());
    });
    return opts;
  }
}
