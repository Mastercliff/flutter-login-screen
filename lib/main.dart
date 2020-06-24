import 'package:flutter/material.dart';
import 'package:login_screen/login.dart';
import 'package:login_screen/success.dart';
void main(){
  runApp(
    MaterialApp(
      title: 'Login Screen',
      home: WellScreen(),
      initialRoute: '/',
      routes:{
       '/well': (context) => WellScreen(),
       '/login': (context) => LoginScreen(),
       '/sucess': (context) => SucessScreen()
      },
    )
  );
}

class WellScreen extends StatefulWidget {
  @override
  _WellScreenState createState() => _WellScreenState();
}

class _WellScreenState extends State<WellScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body:Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 280,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6)
            ),
            child: Column(
            children: <Widget>[
            ImageIcon(AssetImage('assets/img/logo.png'), size: 240, color: Colors.grey[900],),
            Text("Wellcome Stranger", style: TextStyle( 
            fontSize: 22, color: Colors.grey[900], fontFamily: 'RobotoRegular'), textAlign: TextAlign.center,),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 50)),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 100),
            height: 50,
            child: RaisedButton(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Next", style: TextStyle(color:Colors.white, fontSize: 20),),
                  Icon(Icons.navigate_next, color: Colors.white, size: 30,)
                ],),
              onPressed:(){Navigator.pushNamed(context, '/login');}
            ),
          )
        ],
       ),
      )
    );
  }
}