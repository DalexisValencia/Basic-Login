import 'package:flutter/material.dart';

class CloseIcon extends StatelessWidget {
  final Function onPressed;
  CloseIcon({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 10,
            top: 10,
            child: IconButton(
              onPressed: () => onPressed(),
              icon: Icon(
                Icons.close,
                size: 30.0,
                color: Theme.of(context).primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
