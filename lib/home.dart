import 'package:basic_login/clipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  _HomeStateOne  createState() => _HomeStateOne ();
} 

class _HomeStateOne extends State<Home>{
  Color primary = Colors.red;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController _emailController      = new TextEditingController();
  TextEditingController _passwordController   = new TextEditingController();
  TextEditingController _nameController       = new TextEditingController();
  String _email;
  String _password;
  String _displayName;
  bool _obsecure = false;

  void initState(){
    super.initState();
  }

  void _loginUser(){
    _email = _emailController.text;
    _password = _passwordController.text;

    _emailController.clear();
    _passwordController.clear();
  }

  Widget logo(){
        return Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
          child: Container(
          width: MediaQuery.of(context).size.width,
          height:240,
          child: Stack(
            children:<Widget>[
              Positioned(
                child:Container(
                  height: 154,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white
                      ),
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
              ),

              Positioned(
                child: Container(
                  height: 154,
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Go",
                      style: TextStyle(
                        fontSize:20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                  width: 60,
                  height: 60,
                  top: 140,
                  left: 260,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white
                    )
                  ),
              ),

              Positioned(
                width: 30,
                height: 30,
                top: 200,
                left: 230,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white
                  )
                ),
              )
            ]
          )
        )
        );
      }

  Widget _input(Icon icon, String hint, TextEditingController controller, bool obsecure){
      return Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: TextField(
          controller: controller,
          obscureText: obsecure,
          style: TextStyle(
            fontSize: 20
          ),
          decoration: InputDecoration(
            hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            hintText: hint,
            enabledBorder: OutlineInputBorder(//cuando el elemento no tiene el foco
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
                width: 3
              )
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 30, right: 10),
              child: IconTheme(
                data: IconThemeData(color: Theme.of(context).primaryColor), 
                child: icon
              ),
            )
          ),
        ),
      );
  }
  
  Widget _button(String text, Color splashColor, Color highlightColor, Color fillColor, Color textColor, void function()) {
    return RaisedButton(
      highlightElevation: 0.0,
      splashColor: splashColor,
      highlightColor: highlightColor,
      elevation: 0.0,
      color: fillColor,
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0)),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: textColor, fontSize: 20),
      ),
      onPressed: () {
        function();
      },
    );
  }
  
  void _loginSheet() {
       _scaffoldKey.currentState.showBottomSheet<void>((BuildContext context) {
         return DecoratedBox(
           decoration: BoxDecoration(
             color: Theme.of(context).canvasColor
           ),
           child: ClipRRect(
             borderRadius: BorderRadius.only(
               topLeft: Radius.circular(40.0),
               topRight: Radius.circular(40.0)
             ),
             child: Container(
              height: MediaQuery.of(context).size.height / 1.1,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
               child: ListView(
                 children: <Widget>[
                   Container(
                    height: 50,
                    width: 50,
                     child: Stack(
                       children: <Widget>[
                         Positioned(
                           left:10,
                           top:10,
                           child: IconButton(
                             onPressed: (){
                               Navigator.of(context).pop();
                              _emailController.clear();
                              _passwordController.clear();
                             },
                             icon: Icon(
                               Icons.close,
                               size: 30.0,
                               color: Theme.of(context).primaryColor,
                             )
                           )
                         )
                       ],
                     )
                   ),
                   SingleChildScrollView(
                     child: Column(
                       children: <Widget>[
                         Container(
                           width: MediaQuery.of(context).size.width,
                           height:140,
                           child: Stack(
                             children: <Widget>[
                               
                               Positioned(
                                 child: Align(
                                   child: Container(
                                    alignment: Alignment.center,
                                    width:130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).primaryColor
                                    )
                                   )
                                 )  ,
                               ),

                               Positioned(
                                 child: Container(
                                    alignment: Alignment.center,
                                   child: Text(
                                     "Login",
                                    style: TextStyle(
                                      fontSize: 48,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                   )
                                 ),
                               )
                             ],
                           )
                         ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20, top: 60),
                          child: _input(Icon(Icons.email), "EMAIL",
                              _emailController, false),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: _input(Icon(Icons.lock), "PASSWORD",
                              _passwordController, true),
                        ),
                        SizedBox( height:  20 ),
                        Padding(
                           padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              bottom: MediaQuery.of(context).viewInsets.bottom,
                            ),
                            child: Container(
                              child: _button("LOGIN", Colors.white, primary,
                                primary, Colors.white, _loginUser),
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                            )
                        ),
                        SizedBox(
                          height: 20
                        )
                       ],

                     )
                   )
                 ],
               )
             ),
           ),
         );
       });
    }
  
  @override
    Widget build(BuildContext context) {
      return Scaffold(
      resizeToAvoidBottomPadding: false,
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          logo(),
          Padding(
            padding: EdgeInsets.only(top: 80, left: 20, right: 20),
            child: Container(
              child:  _button("LOGIN", primary, Colors.white, Colors.white,
                    primary, _loginSheet),
                height: 50,
            )
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child:Container(
              height: 50,
              child: OutlineButton(
                highlightedBorderColor: Colors.white,
                  borderSide: BorderSide(color: Colors.white, width: 2.0),
                  highlightElevation: 0.0,
                  splashColor: Colors.white,
                  highlightColor: Theme.of(context).primaryColor,
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    "REGISTER",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  onPressed: () {
                    //_registerSheet();
                  },
              ),
            )
          ),
          Expanded(
            child:Align(
              child: ClipPath(
                child: Container(
                  color: Colors.white,
                  height:30
                ),
                clipper: BottomWaveClipper(),
              ),
              alignment: Alignment.bottomCenter,
            )
          )
        ],
      ),
    );
      /*return Scaffold(
        appBar: AppBar(
          title: Text("run "), 
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              logo()
            ],
          )
        )
      );*/
    }
}

class _HomeState  extends State<Home>{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController _emailController      = new TextEditingController();
  TextEditingController _passwordController   = new TextEditingController();
  TextEditingController _nameController       = new TextEditingController();
  String _email;
  String _password;
  String _displayName;
  bool _obsecure = false;

  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color primary = Theme.of(context).primaryColor;

    Widget build(BuildContext context){
      Color primary = Theme.of(context).primaryColor;
      void initState(){
        super.initState();
      }

      Widget logo(){
        return Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
          child: Container(
          width: MediaQuery.of(context).size.width,
          height:240,
          child: Stack(
            children:<Widget>[
              Positioned(
                child:Container(
                  height: 154,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white
                      ),
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
              ),

              Positioned(
                child: Container(
                  height: 154,
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Go",
                      style: TextStyle(
                        fontSize:20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                  width: 60,
                  height: 60,
                  top: 140,
                  left: 260,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white
                    )
                  ),
              ),

              Positioned(
                width: 30,
                height: 30,
                top: 200,
                left: 230,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white
                  )
                ),
              )
            ]
          )
        )
        );
      }


      Widget _input(Icon icon, String hint, TextEditingController controller, bool obsecure){
        return Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: TextField(
            controller: controller,
            obscureText: obsecure,
            style: TextStyle(
              fontSize: 20
            ),
            decoration: InputDecoration(
              hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              hintText: hint,
              enabledBorder: OutlineInputBorder(
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
                  width: 3
                )
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 30, right: 10),
                child: IconTheme(
                  data: IconThemeData(color: Theme.of(context).primaryColor), 
                  child: icon
                ),
              )
                
            ),
          ),
        );
      }

      //button widget
    Widget _button(String text, Color splashColor, Color highlightColor, Color fillColor, Color textColor, void function()) {
      return RaisedButton(
        highlightElevation: 0.0,
        splashColor: splashColor,
        highlightColor: highlightColor,
        elevation: 0.0,
        color: fillColor,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: textColor, fontSize: 20),
        ),
        onPressed: () {
          function();
        },
      );
    }

    void _loginUser(){
      _email = _emailController.text;
      _password = _passwordController.text;

      _emailController.clear();
      _passwordController.clear();
    }
    
    void _loginSheet() {
       _scaffoldKey.currentState.showBottomSheet<void>((BuildContext context) {
         return DecoratedBox(
           decoration: BoxDecoration(
             color: Theme.of(context).canvasColor
           ),
           child: ClipRRect(
             borderRadius: BorderRadius.only(
               topLeft: Radius.circular(40.0),
               topRight: Radius.circular(40.0)
             ),
             child: Container(
              height: MediaQuery.of(context).size.height / 1.1,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
               child: ListView(
                 children: <Widget>[
                   Container(
                    height: 50,
                    width: 50,
                     child: Stack(
                       children: <Widget>[
                         Positioned(
                           left:10,
                           top:10,
                           child: IconButton(
                             onPressed: (){
                               Navigator.of(context).pop();
                              _emailController.clear();
                              _passwordController.clear();
                             },
                             icon: Icon(
                               Icons.close,
                               size: 30.0,
                               color: Theme.of(context).primaryColor,
                             )
                           )
                         )
                       ],
                     )
                   ),
                   SingleChildScrollView(
                     child: Column(
                       children: <Widget>[
                         Container(
                           width: MediaQuery.of(context).size.width,
                           height:140,
                           child: Stack(
                             children: <Widget>[
                               
                               Positioned(
                                 child: Align(
                                   child: Container(
                                    alignment: Alignment.center,
                                    width:130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).primaryColor
                                    )
                                   )
                                 )  ,
                               ),

                               Positioned(
                                 child: Container(
                                    alignment: Alignment.center,
                                   child: Text(
                                     "Login",
                                    style: TextStyle(
                                      fontSize: 48,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                   )
                                 ),
                               )
                             ],
                           )
                         ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20, top: 60),
                          child: _input(Icon(Icons.email), "EMAIL",
                              _emailController, false),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: _input(Icon(Icons.lock), "PASSWORD",
                              _passwordController, true),
                        ),
                        SizedBox( height:  20 ),
                        Padding(
                           padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              bottom: MediaQuery.of(context).viewInsets.bottom,
                            ),
                            child: Container(
                              child: _button("LOGIN", Colors.white, primary,
                                primary, Colors.white, _loginUser),
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                            )
                        ),
                        SizedBox(
                          height: 20
                        )
                       ],

                     )
                   )
                 ],
               )
             ),
           ),
         );
       });
    }

    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          logo(),
          Padding(
            padding: EdgeInsets.only(top: 80, left: 20, right: 20),
            child: Container(
              child:  _button("LOGIN", primary, Colors.white, Colors.white,
                    primary, _loginSheet),
                height: 50,
            )
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child:Container(
              height: 50,
              child: OutlineButton(
                highlightedBorderColor: Colors.white,
                  borderSide: BorderSide(color: Colors.white, width: 2.0),
                  highlightElevation: 0.0,
                  splashColor: Colors.white,
                  highlightColor: Theme.of(context).primaryColor,
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    "REGISTER",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  onPressed: () {
                    //_registerSheet();
                  },
              ),
            )
          ),
          Expanded(
            child:Align(
              child: ClipPath(
                child: Container(
                  color: Colors.white,
                  height:30
                ),
                clipper: BottomWaveClipper(),
              ),
              alignment: Alignment.bottomCenter,
            )
          )
        ],
      ),
    );

    }
  }
}
