import 'package:basic_login/Screens/Login/login.dart';
import 'package:basic_login/widgets/screens__button.dart';
import 'package:basic_login/Screens/Home/body/body__outlineButton.dart';
import 'package:flutter/material.dart';

class WrapperButtons extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  WrapperButtons({this.scaffoldKey});
  void _loginSheet() {
    scaffoldKey.currentState.showBottomSheet<void>((BuildContext context) {
      return LoginScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 80,
            left: 20,
            right: 20,
          ),
          child: Container(
            child: CustomButton(
              text: "LOGIN",
              splashColor: Colors.red,
              highlightColor: Colors.white,
              fillColor: Colors.white,
              textColor: Theme.of(context).primaryColor,
              function: () {
                _loginSheet();
              },
            ),
            height: 50,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 10,
            left: 20,
            right: 20,
          ),
          child: CustomOutlineButton(
            text: 'REGISTER',
            onPressed: () {
              print(
                "aun no hay funciones",
              );
            },
          ),
        ),
      ],
    );
  }
}
