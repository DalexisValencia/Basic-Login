import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  CustomOutlineButton({
    this.text,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: OutlineButton(
        highlightedBorderColor: Colors.white,
        borderSide: BorderSide(
          color: Colors.white,
          width: 2.0,
        ),
        highlightElevation: 0.0,
        splashColor: Colors.white,
        highlightColor: Theme.of(context).primaryColor,
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: () => onPressed,
      ),
    );
  }
}
