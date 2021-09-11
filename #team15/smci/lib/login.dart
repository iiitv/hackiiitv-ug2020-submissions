import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("LOGIN",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    // fontFamily: 'sans-serif-light',
                    color: Colors.black)
                // textScaleFactor: 1.1,
                ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 150,
                    // decoration: BoxDecoration(
                    //     color: Colors.red,
                    //     borderRadius: BorderRadius.circular(50.0)),
                    child: Icon(
                      Icons.account_circle_rounded,
                      size: 150,
                      // color: const Color(0xFF03A9F4),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 70.0, right: 70.0, top: 40, bottom: 0),
                // padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter valid email id'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 70.0, right: 70.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),
              FlatButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/ProfilePage');
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
              SignInButtonBuilder(
                text: 'Sign in with Email',
                icon: Icons.email,
                onPressed: () {
                  Navigator.pushNamed(context, '/ProfilePage');
                },
                backgroundColor: Colors.blueGrey[700]!,
              ),
              SignInButton(
                Buttons.Facebook,
                // mini: true,
                onPressed: () {
                  Navigator.pushNamed(context, '/ProfilePage');
                },
              ),
              SignInButton(
                Buttons.Google,
                // mini: true,
                onPressed: () {
                  Navigator.pushNamed(context, '/ProfilePage');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
