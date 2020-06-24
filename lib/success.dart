import 'package:flutter/material.dart';
import './login.dart';

class SucessScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.check_circle, size: 190, color: Colors.white,),
            Text("Wellcome ${emailController.text}", style: TextStyle(fontSize: 21,
            color: Colors.white, fontFamily: 'RobotoRegular'), textAlign: TextAlign.center,),
          ],
        )
      ),
    );
  }
}