import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['uno', 'dos', 'tres', 'cuatro'];

  @override
  Widget build(BuildContext context) {
    return ListView(children: _crearItemsCorto());
  }

  List<Widget> _crearItems() {
    List<Widget> list = [];

    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      list..add(tempWidget)..add(Divider());
    }

    return list;
  }

  List<Widget> _crearItemsCorto() {
    var widgets = options.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item),
            subtitle: Text("hola"),
            leading: Icon(Icons.exit_to_app_outlined),
            trailing: Icon(Icons.exit_to_app_sharp),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();

    return widgets;
  }
}
