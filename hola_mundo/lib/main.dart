import 'package:flutter/material.dart';
import 'package:hola_mundo/Widgets/start.dart';
import 'package:hola_mundo/Widgets/welcome.dart';
import 'Widgets/login.dart';
import 'package:hola_mundo/Widgets/singup.dart';

void main(){
  runApp(App());
}

class pantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fast food App",
      //home: Welcome(),
      home: Scaffold(
          body: PageView(physics: BouncingScrollPhysics(), children: <Widget>[
        Start(),
        Welcome(),
        Login(),
        Singup(),
      ]
      )
      ),
    );
  }
}
