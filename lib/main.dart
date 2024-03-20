import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cash_invest/features/home/bloc/home_bloc.dart';
import 'package:cash_invest/features/signup/bloc/signup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/account/bloc/account_bloc.dart';
import 'features/login/bloc/login_bloc.dart';
import 'features/login/pages/login_page.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
        BlocProvider(
          create: (context) => AccountBloc(),
        ),
        BlocProvider(
            create: (context) => SignupBloc(),
        ),
        BlocProvider(
            create: (context) => LoginBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.red.shade300,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
        ),
        home: AnimatedSplashScreen(
          splash: Image.asset('assets/cashinvest.png'),
          duration: 3000,
          splashTransition: SplashTransition.rotationTransition,
          backgroundColor: Color(0xD1B8A4EC),
          nextScreen: LoginPage(),
        ),
      ),
    );
  }
}

