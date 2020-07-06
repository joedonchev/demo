import 'dart:async';

class Bloc {

  final _loginController = StreamController<bool>.broadcast();
  Stream<bool> get login => _loginController.stream;
  Function(bool) get setLogin => _loginController.sink.add;

  ////

  //////////////////////////////////////////////////

  void dispose (){
    _loginController.close();
  }

}