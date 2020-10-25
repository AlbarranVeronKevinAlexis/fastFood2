import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //height: double.infinity,
     // width: double.maxFinite,
      height: double.maxFinite,
      
      child: Image(
        //width: 10,
        //fit: BoxFit.cover,
        image: AssetImage('assets/images/fastFood.png'),
      ),
    );
  }
}

