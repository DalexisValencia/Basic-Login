import 'package:basic_login/Screens/Login/login__input.dart';
import 'package:basic_login/widgets/Screens__button.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.clear();
    _passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 20, top: 60),
          child: LoginInput(
            icon: Icon(Icons.email),
            hint: "EMAIL",
            controller: _emailController,
            obsecure: false,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: LoginInput(
            icon: Icon(Icons.lock),
            hint: "PASSWORD",
            controller: _passwordController,
            obsecure: true,
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            child: CustomButton(
              text: "LOGIN",
              splashColor: Colors.white,
              highlightColor: Colors.white,
              fillColor: Theme.of(context).primaryColor,
              textColor: Colors.white,
              function: () {
                //_loginSheet
              },
            ),
            height: 50,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ],
    );
  }
}
