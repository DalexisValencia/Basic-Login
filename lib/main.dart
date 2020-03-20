import 'package:basic_login/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//void main() => runApp(MyApp());
void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  .then((_){
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        hintColor: Color(0xFFC0F0E8),
          primaryColor: Color(0xFF80E1D1),
          canvasColor: Colors.transparent),
          //fontFamily: "Montserrat",
          home: Home(),
      );
  }
}