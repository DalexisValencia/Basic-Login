import 'package:basic_login/Screens/Home/body/home__body.dart';
import 'package:basic_login/Screens/Home/footer/home__footer.dart';
import 'package:basic_login/Screens/Home/header/home__header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  _HomeStateOne createState() => _HomeStateOne();
}

class _HomeStateOne extends State<Home> {
  Color primary = Colors.red;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          CirclesHeader(),
          WrapperButtons(
            scaffoldKey: _scaffoldKey,
          ),
          ClipperFooter(),
        ],
      ),
    );
  }
}
