import 'dart:async';

class Validator{
  final validateEmail = StreamTransformer<String,String>.fromHandlers(
    handleData: (email,sink){
      if(!email.contains('@')){
        sink.add(email);
      }else{
        sink.addError('please enter a valid email');
      }
    }
  );

  final validatePassword = StreamTransformer<String,String>.fromHandlers(
    handleData: (password,sink){
      if(password.length > 3){
        sink.add(password);

      }else{
        sink.addError('please enter valid password');
      }
    }
  );
}