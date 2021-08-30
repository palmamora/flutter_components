import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool? _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      inactiveColor: Colors.grey,
      label: 'Tamaño de la imagen',
      //divisions: 20,
      value: _valorSlider,
      min: 100.0,
      max: 400.0,
      onChanged: (_bloquearCheck == true)
          ? null
          : (value) {
              setState(() {
                _valorSlider = value;
                print(value);
              });
            },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://upload.wikimedia.org/wikipedia/commons/a/a8/Bill_Gates_2017_%28cropped%29.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    // return Checkbox(
    //     value: _bloquearCheck,
    //     onChanged: (value) {
    //       setState(() {
    //         _bloquearCheck = value;
    //       });
    //     });
    return CheckboxListTile(
        title: Text('Bloquear Slider'),
        value: _bloquearCheck,
        onChanged: (value) {
          setState(() {
            _bloquearCheck = value;
          });
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear Slider'),
        value: (_bloquearCheck == true) ? true : false,
        onChanged: (value) {
          setState(() {
            _bloquearCheck = value;
          });
        });
  }
}
