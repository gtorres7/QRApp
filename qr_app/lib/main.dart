import'package:flutter/material.dart';

import 'pages/homepage.dart';
import 'pages/scroll_page.dart';

// void main() {
//  runApp(MaterialApp(
//  home: MyApp(),
//  debugShowCheckedModeBanner: false,
//  ));
// }
// class MyApp extends StatefulWidget {
//  @override
//  _MyAppState createState() => _MyAppState();
// }
// class _MyAppState extends State<MyApp> {
//  @override
//  Widget build(BuildContext context) {
//  return HomePage();
//  }
// }

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll',
      routes: {
        
        'scroll' : (BuildContext context) =>ScrollPage(),
        "home"   :(BuildContext context) =>HomePage(),
      },
    );
  }
}

