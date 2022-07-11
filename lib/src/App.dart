import 'package:flutter/material.dart';
import '../src/screens/login_screens.dart';

class App extends StatelessWidget{
  build(context){
    return MaterialApp(
      title: 'Log me In',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),

        ),
        body: LoginScreen(),
      ),
    );
  }
}