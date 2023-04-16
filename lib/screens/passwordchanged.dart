import 'package:flutter/material.dart';


class FormPage extends StatelessWidget{
  const FormPage ({super.key});
  @override



  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        color: Colors.yellow,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 137),
              child: const Align(
                alignment: Alignment.center,
                child: Image(
                    width: 100,
                    height: 100,
                    image: AssetImage(
                      'image/checkmark.png',
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
