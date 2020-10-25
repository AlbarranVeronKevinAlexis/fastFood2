import 'package:flutter/material.dart';

class Welcome extends  StatelessWidget{
 @override
Widget build(BuildContext context){
  return Container(
   color: Color.fromARGB(255, 255, 249, 239),
   child: Column(
     mainAxisSize: MainAxisSize.max,  //imagen hasta arriba
     crossAxisAlignment: CrossAxisAlignment.start, //Todos los elemnentos del colum se muestren a la izquierda
     children: [
       Image(
         image: AssetImage('assets/images/balloon-shape.png'),
         ),
         Center(
           child: Padding(
             padding: const EdgeInsets.only(top: 10.0), //.fromLTRB(0.0,10.0,0.0,0.0)
             child: Image(
               image: AssetImage('assets/images/FastFood-Logo.png')
               ),
           ),
         ),
         
         Center(  //imagen
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image(
                image: AssetImage('assets/images/online_groceries.png'),
              ),
            ),
          ),
          //termino de la imagen anterior
          
            Center(
           child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0,60.0,0.0,20.0), // const EdgeInsets.only(top: 10.0)
              child: Text(
              'El directorio de comida',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
              ),
           ),
         ),

            Center(
            child: Text(
              'Busca. Encuentra. Pide.',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              ),
          ),

          Center(
            child: Text(
              'Recibe. Disfruta',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              ),
          ),

    
         Center(
           child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0,100.0,0.0,20.0), // const EdgeInsets.only(top: 10.0)
              child: FlatButton(
              //color: Colors.orange,
              color: Color.fromRGBO(231, 74, 47, 1),
              textColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 110, vertical: 20),
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              //padding: const EdgeInsets.all(20.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
                /*...*/
              },
              shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              child: Text(
                "Iniciar ahora",
                style: TextStyle(fontSize: 22.0),
              ),
            )

           ),
         ),


     ], //children
   ),
  );
}
}