import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/screens/auth_page.dart';
import 'firebase_options.dart';

import 'screens/passwordchanged.dart';
import 'screens/welcome.dart';
import 'screens/loginpage.dart';
import 'screens/homepage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
      MyApp()); // call the class here which  you wanna test( untill you've learned navigation)
  //even better
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // use material app to define properties of the app like theme, canvas color, darkThemeData etc etc
      // home :WelcomePage(),
      //home:Loginpage(),
      home: AuthPage(),

      debugShowCheckedModeBanner: false,
      // home: FormPage(),
    );
  }
}
// It's also advisable to organize your code. Keep all the files for pages inside a directory