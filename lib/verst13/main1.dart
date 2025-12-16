import 'package:flutter/material.dart';
import 'package:flutter_application_my_app/verst13/LogIn1.dart';
import 'package:flutter_application_my_app/verst13/onboarding1.dart';
import 'package:flutter_application_my_app/verst13/signUp1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sproutly",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
        )
      ),

      initialRoute: "/onboarding1",
      routes: {
        "/onboarding1": (context) => Onboarding1(),
        "/signUp1": (context) => SignUp1(),
        "LogIn1": (context) => LogIn1(),
      },
    );
  }
}