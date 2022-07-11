import 'package:flutter/material.dart';
import '../Blocs/bloc.dart';


final bloc =  Bloc();


class LoginScreen extends StatelessWidget{
  Widget build(context){


    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          EmailField(),
          PasswordField(),
          Container(margin: EdgeInsets.only(top: 20),),
          SubmitButton(),
        ],
      ),
    );
  }
  Widget EmailField(){

    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot){
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Enter Email',
            hintText: 'you@mail.com',
            errorText: snapshot.error.toString(),
          ),
        );

      },

    );


}

  Widget PasswordField(){
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
    );
}
  Widget SubmitButton(){
    return ElevatedButton(
        onPressed: (){},
        child: Text('Submit'),
    );
  }

}