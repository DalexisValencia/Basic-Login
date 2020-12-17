import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  final Icon icon;
  final String hint;
  final TextEditingController controller;
  final bool obsecure;
  LoginInput({
    this.icon,
    this.hint,
    this.controller,
    this.obsecure,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: TextField(
        controller: controller,
        obscureText: obsecure,
        style: TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          hintText: hint,
          enabledBorder: OutlineInputBorder(
            //cuando el elemento no tiene el foco
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 3,
            ),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 10,
            ),
            child: IconTheme(
              data: IconThemeData(
                color: Theme.of(context).primaryColor,
              ),
              child: icon,
            ),
          ),
        ),
      ),
    );
  }
}
