import 'package:flutter/material.dart';
import 'package:hola_mundo/Widgets/login.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Singup extends StatefulWidget {
  @override
  _SingupState createState() => _SingupState();
}

class _SingupState extends State<Singup> {
String nombre= "";
final nombreController = TextEditingController();

  @override
  
  void dispose(){
    nombreController.dispose();
    super.dispose();//recolector de basura
  } //variar el contenido del controlador

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 249, 239, 1),
        appBar: AppBar(
          title: const Text('Sing Up'),
          backgroundColor: Color.fromRGBO(231, 74, 47, 1),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              }),
        ),

  
       // body: Column(
         // mainAxisSize: MainAxisSize.max, //lena todo el espacio vertical
          body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SvgPicture.asset(
                  'assets/images/singupIcon.svg',
                  height: 150.0,
                  width: 300.0,
                ),
              ),
            ),

          //name
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                 // prefixIcon: Icon(
                    //Icons.mail,
                    //color: Colors.black,
                 // ),
                  hintText: '    Nombre',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),

          //Email
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
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
                      hintText: '    Email',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),

                 //cell phone number
            Container(
              //padding: const EdgeInsets.fromLTRB(0.0,30.0,0.0,20.0),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: '    Teléfono',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),

                //Contraseña
            Container(
              //padding: const EdgeInsets.fromLTRB(0.0,30.0,0.0,20.0),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: TextField(
                //controller: _password,
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: '    Contraseña',
                      //obscureText: true,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),


                //Confirmar contraseña
            Container(
              //padding: const EdgeInsets.fromLTRB(0.0,30.0,0.0,20.0),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                //controller: _password,
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: '    Confirmar contraseña',
                      //obscureText: true,
                      filled: true,
                      fillColor: Colors.white,
                      
                    ),
                  ),
                ),

            //Btn registrarse
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: FlatButton(
                onPressed: () {},
                color: Color.fromRGBO(231, 74, 47, 1),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 110, vertical: 20),
                highlightColor: Color.fromRGBO(255, 106, 81, 1),
                //shape: StadiumBorder(),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Text(
                  'REGISTRARSE',
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontFamily: 'Open Sans'),
                ),
              ),
            ),
          ],
        ),
          ),
        );
  }
}
