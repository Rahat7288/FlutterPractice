import 'package:flutter/material.dart';
class App extends StatelessWidget {
  /*
  * building custom widgets
  * */
  Widget build (context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Text('from the body'),
      ),
    );
  }
}

