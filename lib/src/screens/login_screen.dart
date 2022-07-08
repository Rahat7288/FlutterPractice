import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
 createState(){
   return LoginScreenState();
 }
}

class LoginScreenState extends State<LoginScreen>{
  final formKey  = GlobalKey <FormState>();
  late String email    = '';
  late String password = '';
  Widget build (context){
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child:  Column(
          children: [

            emailField(),
            passwordField(),
            submitButton(),

          ],
        ),
      )
    );
  }

  Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'example@mail.com',

      ),
      // autovalidateMode: true,
      validator: (value){
        if(value != null && !value.contains('@')){
          return 'please Enter valid Email';
        }
        return null;
      },

      onSaved: ( value){
        email = value.toString();
      },
    );
  }
  Widget passwordField(){

    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Enter Password',
        hintText: 'password',
      ),

      validator: (value){
        if(value != null && value.length < 4){
          return 'Password must be greater then 4 cherecter';
        }
      },

      onSaved: (value){
        password = value.toString();
      },
    );

  }

  Widget submitButton(){
  return Container(
    margin: EdgeInsets.only(top: 20),
    child: ElevatedButton(
      onPressed: (){
        if(formKey.currentState?.validate()!=null){
          formKey.currentState?.save();
        }
        print(email +' password '+password );
      },
      child: Text('Submit'),
    ),
  );
  }
}