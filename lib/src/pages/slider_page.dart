import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valor = 300.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Slider Page")),
        body: Container(
            padding: EdgeInsets.only(top: 60.0),
            child: Column(
              children: [
                Text("Desliza el dedo uwu"),
                _crearSlider(),
                _crearCheckBox(),
                _crearSwitch(),
                Expanded(child: _crearImagen()),
              ],
            )));
  }

  _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: "Tamano de la imagen",
        //divisions: 10,
        value: _valor,
        min: 0.0,
        max: 400.0,
        onChanged: (_bloquearCheck)
            ? null
            : (valor) {
                setState(() {
                  _valor = valor;
                });
              });
  }

  Widget _crearImagen() {
    return Image(
        image: NetworkImage(
            "https://static.wikia.nocookie.net/valorant/images/7/79/Jett_artwork.png/revision/latest?cb=20200602020209"),
        width: _valor,
        fit: BoxFit.contain);
  }

  _crearCheckBox() {
    // return Checkbox(
    //     value: _bloquearCheck,
    //     onChanged: (valor) {
    //       setState(() {
    //         _bloquearCheck = valor;
    //       });
    //     });
    return CheckboxListTile(
        title: Text("Bloquear Slider"),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor;
          });
        });
  }

  _crearSwitch() {
    return SwitchListTile(
        title: Text("Bloquear Slider 2"),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor;
          });
        });
  }
}
