import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exit_to_app),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _mostrarAlerta(context);
          },
          child: Text('Mostrar Alerta'),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            shape: StadiumBorder(),
          ),
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('titulo'),
            content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Text('contenido'), FlutterLogo(size: 100.0)]),
            actions: [
              Row(
                children: [
                  TextButton(onPressed: (){}, child: Text('Cancelar')),
                  TextButton(onPressed: (){}, child: Text('Ok')),
                ],
              )
            ],
          );
        });
  }
}
