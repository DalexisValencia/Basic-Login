import 'package:basic_login/Screens/Login/login__closeIcon.dart';
import 'package:basic_login/Screens/Login/login__form.dart';
import 'package:basic_login/Screens/Login/login__header.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Theme.of(context).canvasColor),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height / 1.1,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              CloseIcon(
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    LoginHeader(),
                    SizedBox(height: 20),
                    LoginForm()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
