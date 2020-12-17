import 'package:basic_login/Screens/Home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        hintColor: Color(0xFFC0F0E8),
        primaryColor: Color(0xFF80E1D1),
        canvasColor: Colors.transparent,
      ),
      //fontFamily: "Montserrat",
      home: Home(),
    );
  }
}
