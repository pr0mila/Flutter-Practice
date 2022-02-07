import 'package:flutter/material.dart';
import 'package:flutterintermediate/screens/welcome_screen.dart';
import 'package:flutterintermediate/screens/login_screen.dart';
import 'package:flutterintermediate/screens/registration_screen.dart';
import 'package:flutterintermediate/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: '/',
      routes: {
          '/':(context)=> WelcomeScreen(),
          LoginScreen.id: (context)=> LoginScreen(),
          RegistrationScreen.id : (context)=> RegistrationScreen(),
         ChatScreen.id: (context)=> ChatScreen(),
    },
    );
  }
}
