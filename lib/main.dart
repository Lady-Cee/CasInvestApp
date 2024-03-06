import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'features/savings/models/savings.dart';
import 'firebase_options.dart';

import 'features/home/pages/home_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());

  var saving1 = Savings(title: "saved money", returns: "450", amount: "700");
  var saving2 = Savings(title: "saved money", returns: "450", amount: "");

  print("isSaving equal");
  print(saving1 == saving2);

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
        splash:Image.asset('assets/cashinvest.png'),
        duration:3000,
        splashTransition:SplashTransition.rotationTransition,
        backgroundColor: Color(0xD1B8A4EC),
        nextScreen:  HomePage()
      ),
    );
  }
}

