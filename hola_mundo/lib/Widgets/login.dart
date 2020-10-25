///import 'dart:html';
import 'package:flutter/material.dart';
import 'package:hola_mundo/Widgets/welcome.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Login extends StatefulWidget {
 //const Login((Key key)) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
String nombre= "Veronkevin2@gmail.com";
//variable que ocntrole el input o textfield
final nombreController = TextEditingController();//controla el texto del textfield

  @override

  void dispose(){
    nombreController.dispose();
    super.dispose();//recolector de basura
  } //variar el contenido del controlador

   Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 249, 239, 1),
        appBar: AppBar(
          title: const Text('Login'),
   
     
          backgroundColor: Color.fromRGBO(231, 74, 47, 1),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Welcome()),
                );
              }
              ),
        ),
         // body: SingleChildScrollView //crea un scrol hacia abajo cuando se requiera
        //body: Column( //de ahi se pasa a la senntencia de: MainAxisSize.max,
          body: SingleChildScrollView(
            child: Column(
            children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SvgPicture.asset(
                  'assets/images/authenticationIcon.svg',
                  height: 250.0,
                  width: 250.0,
                ),
              ),
            ),


            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Ingresa tus credenciales\n'
                  'registradas para acceder',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    letterSpacing: 0.3,
                    decoration: TextDecoration.none,
                    color: Color.fromRGBO(71, 34, 18, 1),
                  ),
                ),
              ),
            ),

          //Email user
            Container(
               padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: TextField(
                //controller: Controller,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.black,
                  ),
                  hintText: 'Email',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),


            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: true,
                //controller: Controller,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  hintText: 'Contraseña',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),

          Container(
              padding: const EdgeInsets.fromLTRB(0.0,10.0,0.0,5.0), // padding: const EdgeInsets.only(top: 55),
              child: FlatButton(
                onPressed: () {

                },
               // color: Color.fromRGBO(231, 74, 47, 1),
                textColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
               // highlightColor: Color.fromRGBO(255, 106, 81, 1),
                //shape: StadiumBorder(),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Text(
                  '¿Aun no tienes una cuenta? Consigue una',
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, fontFamily: 'Open Sans'),
                ),
              ),
            ),


          //Btn Continuar
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: FlatButton(
                onPressed: () {
                  nombre=nombreController.text;
                  print('Hola $nombreController');                },
                color: Color.fromRGBO(231, 74, 47, 1),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 110, vertical: 20),
                highlightColor: Color.fromRGBO(255, 106, 81, 1),
                //shape: StadiumBorder(),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Text(
                  'CONTINUAR',
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontFamily: 'Open Sans'),
                ),
              ),
            ),
          ],
            ),
          //mainAxisSize: MainAxisSize.max, //lena todo el espacio vertical
         
        ));
  }
}
