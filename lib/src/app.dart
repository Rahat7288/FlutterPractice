import 'package:flutter/material.dart';
import '../src/screens/login_screen.dart';
class App extends StatelessWidget {
  /*
  * building custom widgets
  * */
  Widget build (context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('form'),
        ),
        body: LoginScreen(),
      ),
    );
  }
}

