
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(Login());


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Login",
      home: SimpleLog(),

    );
  }



}


class SimpleLog extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SimpleLogin();
  }


}


class SimpleLogin extends State<SimpleLog> {

  final TextEditingController _username = new TextEditingController();
  final TextEditingController _password = new TextEditingController();
  String string = "Enter your username and password";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Login Form",

          ),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: ListView(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              Center(
                  child: Image.asset('assets/images/face.png', width: 90, height: 90, color: Colors.white,)
              ),


              //form
              Padding(padding: EdgeInsets.fromLTRB(0, 70, 0, 0),),
              Container(
                height: 220,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: TextField(
                        controller: _username,
                        decoration: InputDecoration(
                            hintText: "username",
                            icon: Icon(Icons.person)
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: TextField(
                        obscureText: true,
                        controller: _password,
                        decoration: InputDecoration(
                            hintText: "password",
                            icon: Icon(Icons.lock)
                        ),
                      ),
                    ),

                    Center(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 40, top: 10),
                            child: RaisedButton(
                              onPressed: _appLogic,
                              color: Colors.red,
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 150, top: 10),
                            child: RaisedButton(
                              onPressed: _appLogic,
                              color: Colors.red,
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                            )
                          )
                        ],
                      ),
                    )

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20),),
              Center(
                child: Text(
                  string,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              )
            ],
          )
        ),
      )
    );
  }


  void _appLogic() {
    setState(() {
      string = "Welcome Home " + _username.text + "!";
    });
  }



}