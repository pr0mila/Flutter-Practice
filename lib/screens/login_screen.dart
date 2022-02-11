import 'package:flutter/material.dart';
import 'package:flutterintermediate/components/roundedbutton.dart';
import 'package:flutterintermediate/constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id  = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag:'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kInputFieldDecoration.copyWith(hintText: 'Enter your Email'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kInputFieldDecoration.copyWith(hintText: 'Enter your Passworrd'),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(title: 'Log In', color:Colors.lightBlueAccent, onPressed: () {}
    ),
          ],
        ),
      ),
    );
  }
}
