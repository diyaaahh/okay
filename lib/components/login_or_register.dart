import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/loginpage.dart';
import 'package:flutter_application_1/components/registerpage.dart';

class LoginOrRegister extends StatefulWidget{
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister>createState()=> _LoginOrRegisterState();
}
class _LoginOrRegisterState extends State<LoginOrRegister>{

  bool showLoginPage= true;

  void togglePages(){
    setState(() {
      showLoginPage=!showLoginPage;
    });
  }
  @override
  Widget build (BuildContext context) {
    if (showLoginPage){
      return Loginpage(
        onTap: togglePages,
      );
    }
    else{
      return Registerpage(
        onTap:togglePages,
      );
    }
    
  }
}