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
 mainAxisAlignment: MainAxisAlignment.center,
 crossAxisAlignment: CrossAxisAlignment.stretch,
 children: <Widget>[
 Image(image:
NetworkImage("https://www.eluniversal.com.mx/sites/default/files/2020/08/26/pikachu_pokemon_ash.jpg")),
 flatButton("Escanear QR", ScanPage()),
 SizedBox(height: 20.0,),
 flatButton("Generar QR",
GeneratePage()),
 ],
 ),
 ),
 );
 }
 Widget flatButton(String text, Widget widget) {
 return FlatButton(
 padding: EdgeInsets.all(15.0),
 onPressed: () async {
 Navigator.of(context)
 .push(MaterialPageRoute(builder:
(context) => widget));
 },
 child: Text(
 text,
 style: TextStyle(color:
Colors.blue,fontWeight: FontWeight.bold),
 ),
 shape: RoundedRectangleBorder(
 side: BorderSide(color: Colors.blue,width:
3.0),
 borderRadius:
BorderRadius.circular(20.0)),
 );
 }
}
