import 'package:flutter/material.dart';
import 'package:flutterliquidswipeapp/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LiquidReveal pages-app',
      //theme: ThemeData(
        //primarySwatch: Colors.blue,

        //visualDensity: VisualDensity.adaptivePlatformDensity,
      //),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
