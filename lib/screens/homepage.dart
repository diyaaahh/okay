import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 200),
        child: Align(
          alignment: Alignment.topCenter,
          child: Text(
            ("Logged in as:  " + user!.email!),
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 200),
        width: 200,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: const Text('Log out',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          onPressed: () => FirebaseAuth.instance.signOut(),
        ),
      )
    ])));
  }
}
