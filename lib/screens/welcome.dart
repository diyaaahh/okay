import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        
        child: Column(children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 134),
            //mainAxisAlignment: MainAxisAlignment.center,
            child: const Align(
              alignment: Alignment.topCenter,
              child: Image(
                width: 137,
                height: 139,
                image: AssetImage(
                  'image/bus.png',
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              width: 286,
              height: 93,
              child:const Align(
                alignment: Alignment.center,
                child: Text(
                  'Saha Yatri',
                  style: TextStyle(fontFamily:'greatt', fontSize: 60),
                ),
              )),
          Container(
          width: 320,
          height:50,
          margin: const EdgeInsets.only( top:50,left: 23,right: 23),
         //padding: EdgeInsets.only(right:145,top:10,bottom:10),
         
           child: OutlinedButton(
            style:OutlinedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))
            ),
            
            child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 16),),
             onPressed: (){
              print("donee");
             })
          ),
          
          Container(
             width: 320,
          height:50,
          margin: const EdgeInsets.only(left: 23,right: 23,top: 20),
          child: ElevatedButton(
            style:ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              side:BorderSide(width: 1, color: Colors.black),
              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))
            ),
            child:Text('Register now',style:TextStyle(color: Colors.black,fontSize: 16,)),
            onPressed:() {
              print('done2');
            },
          ),  
          ),  
          Container(
            margin: EdgeInsets.only(top:80),
            child:Text('Continue as a guest?', style: TextStyle(color: Colors.green,fontSize: 14)
          )      
          ),
        ]),
      ),
    ) ; 
  
  }
}