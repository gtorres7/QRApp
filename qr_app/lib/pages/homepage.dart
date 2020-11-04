import 'package:flutter/material.dart';

import 'generate.dart';
import 'scan.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(
                image: NetworkImage(
                    "https://www.eluniversal.com.mx/sites/default/files/2020/08/26/pikachu_pokemon_ash.jpg")),
            SizedBox( height: 20.0),
            customButton("Escanear QR", ScanPage()),
            SizedBox(
              height: 20.0,
            ),
            customButton("Generar QR", GeneratePage()),
          ],
        ),
      ),
    );
  }

  Widget customButton(String text, Widget widget) {
    return RaisedButton(
      color: Colors.blue,
      padding: EdgeInsets.all(15.0),
      onPressed: () async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => widget));
      },
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
          //side: BorderSide(color: Colors.blue, width: 3.0),
          borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
