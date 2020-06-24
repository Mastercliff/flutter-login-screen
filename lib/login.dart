import 'package:flutter/material.dart';



class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

TextEditingController emailController = new TextEditingController();
TextEditingController passController = new TextEditingController();

GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

class _LoginScreenState extends State<LoginScreen> {
  Widget myButtonModel(String mtitle, mColor,mIcon,buttonFuntion){
    return  Container(
    width: 130,
    height: 50,
    decoration: BoxDecoration(
      
      borderRadius: BorderRadius.circular(4)
    ),
    child: RaisedButton(
      color: mColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(mtitle, style: TextStyle(color:Colors.white, fontSize: 20),),
          Icon(mIcon, color: Colors.white, size: 30,)
        ],),
      onPressed: buttonFuntion
    ),
  );
}

  Widget textBoxModel(String mhint, bool isObscure, textController){
    return Container(
    width: 270,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border(
        bottom: BorderSide(
          width: 3,
          color: Colors.blue
        )
      )
    ),
    child: Padding(padding: EdgeInsets.all(5),
    child: TextField(
    controller: textController,
    obscureText: isObscure,
    style: TextStyle(fontSize:20,),
      decoration: InputDecoration.collapsed(
        hintText: mhint,
      ),
      ),
    )
  );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      key: scaffoldKey,
      body: SingleChildScrollView(
      child: Padding(padding: EdgeInsets.only(top: 120),
      child:  Center(
      child: Column(
        children: <Widget>[
          Container(
            width: 240,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white
            ),
            child: Icon(Icons.android, size: 110, color: Colors.blueGrey[900],),
          ),
          Padding(padding: EdgeInsets.only(bottom:50)),
          textBoxModel("User", false, emailController),
          Padding(padding: EdgeInsets.only(top:15)),
          textBoxModel("Password", true, passController),
        Padding(padding: EdgeInsets.only(top:25)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           myButtonModel("Login",Colors.blue ,Icons.person_outline,(){
             if(emailController.text == '' || passController.text == ''){
               scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Fill in all the spaces")));
             }
             else{
               Navigator.pushNamed(context, '/sucess');
             }
             }),
           Padding(padding: EdgeInsets.only(right:10)),
           myButtonModel("Back",Colors.grey[900] ,Icons.arrow_back,(){Navigator.pop(context);})
          ],
         )
        ],
       ),
      ),
      )
      )
    );
  }
}