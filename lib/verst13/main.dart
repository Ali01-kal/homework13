import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_my_app/verst13/logIn.dart';
import 'package:flutter_application_my_app/verst13/onboarding.dart';
import 'package:flutter_application_my_app/verst13/sign_up_screenshot.dart';

void main() {
  final String text = "hello"..toString();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sproutly",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          
          focusedBorder:OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 0.0,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(
              36.0,

              ))
          )
        ),
      ),
      initialRoute: "/onboarding",
      routes: {
        "/onboarding": (context) => OnboardingScreen(),
        "/logIn": (context) => LogInScreen(),
        "/signUp": (context) => SignUpScr()
      },
    );
  }
}