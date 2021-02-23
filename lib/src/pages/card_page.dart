import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Page"),
      ),
      body: ListView(
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
        ],
        padding: EdgeInsets.all(10.0),
      ),
    );
  }

  _cardTipo1() {
    return Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: [
            ListTile(
              title: Text('Titulo de la card'),
              subtitle: Text(
                  "Esto es un subtitulo para demostar como se ve en la tarjeta creada en flutter gracias al componente Card"),
              leading: Icon(
                Icons.photo_album,
                color: Colors.blue,
              ),
              //contentPadding: EdgeInsets.all(20.0),
            ),
            Row(
              children: [
                FlatButton(onPressed: () {}, child: Text("Cancel")),
                FlatButton(onPressed: () {}, child: Text("OK"))
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            )
          ],
        ));
  }

  _cardTipo2() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      elevation: 10.0,
      clipBehavior: Clip.antiAlias, // si funciona
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage("assets/loading.gif"),
            image:
                NetworkImage("https://images7.alphacoders.com/110/1108907.jpg"),
            fadeInDuration: Duration(seconds: 1),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          /*Image(
            image:),*/
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text("No tengo idea de que poner"))
        ],
      ),
    );
  }
}
