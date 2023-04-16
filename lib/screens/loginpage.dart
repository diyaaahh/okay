import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/components/auth_services.dart';
import 'package:flutter_application_1/firebase_options.dart';
//import 'package:flutter_application_1/components/login_button.dart';
import 'package:flutter_application_1/screens/auth_page.dart';
import 'package:flutter_application_1/screens/homepage.dart';
import 'package:flutter_application_1/components/auth_services.dart';

import '../main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class Loginpage extends StatefulWidget {
  final controller;
  final hintText;
  final obscureText;
  final Function()? onTap;
  Loginpage({
    super.key,
    this.controller,
    this.hintText,
    this.obscureText,
    required this.onTap,
  });

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  Future signUserIN() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      showErrorMessage(e.code);
    }
  }

  void showErrorMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Center(
            child: Text(message),
          ));
        });
  }

  void wrongPasswordMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text('Incorrect password!'),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
      Container(
        margin: const EdgeInsets.only(top: 50),
        child: const Align(
            alignment: Alignment.topCenter,
            child: Image(
                width: 100, height: 200, image: AssetImage('image/bus.png'))),
      ),

      Container(
          margin: EdgeInsets.only(top: 10),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: 'Email',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 180, 174, 174)))),
          )),

      Container(
          margin: EdgeInsets.only(top: 10),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: 'Password ',
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 180, 174, 174))),
            ),
          )),

      Container(
          margin: EdgeInsets.only(top: 10, right: 5),
          child: const Text('Forgot password?',
              style: TextStyle(color: Colors.green))),
      //
      // SignIn button
      Container(
          margin: EdgeInsets.only(top: 50),
          width: 300,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text('LogIn',
                style: TextStyle(color: Colors.white, fontSize: 20)),
            onPressed: () {
              signUserIN();
            },
          )),
      Container(
          margin: EdgeInsets.only(top: 25),
          child: GestureDetector(
              onTap: widget.onTap,
              child: const Text(
                'Register now?',
                style: TextStyle(color: Colors.red),
              ))),

      Container(
        margin:EdgeInsets.only(top:30),
        child:Text('Or',style:TextStyle(fontSize: 20,color: Color.fromARGB(255, 154, 145, 145))),
      ),

      Container(
        margin:EdgeInsets.only(top:30),
        child:Text('Sign in with',style:TextStyle(fontSize: 20,color: Color.fromARGB(255, 154, 145, 145))),
      ),
      Container(
        //margin:EdgeInsets.only(top:10),
        child: IconButton(
         
          splashRadius: 20,
          iconSize: 50,
          icon: CircleAvatar(
          
          backgroundImage: AssetImage('image/google_logo.jpg'),),
        onPressed: () => AuthService().signInWithGoogle(),

        ))
    ]))));
  }
}
