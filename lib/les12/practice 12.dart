import 'dart:developer';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen1 extends StatelessWidget {
  const SignUpScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 71.0,
          vertical: 58.0,        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
          gradient: LinearGradient(
            colors: [
              Color(0xff89C6A7),
              Color(0xff25596E),
            ],
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
         
          children: [

          
           TextButton( onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 15.47),
              minimumSize: Size(double.infinity, 0.0), // 🔥 дұрыс нұсқа
              
            ),
            child: Text(
              "Sign up",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black, // 🔥 ақ фон → текст қара болсын
              ),
            ),
          ),
          const SizedBox(height: 8.0,),
          Text(
            "Already have an account",
            style: TextStyle(color: Colors.white),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                   text: "Log in",
                   style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                   ),
                   recognizer: TapGestureRecognizer()
                   ..onTap = () {
                    log("You clicked log in");
                   },
                ),
                TextSpan(
                  text: "instead",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          ],
        ),

      ),
    

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/logo.svg',
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/ph.png',
              ),
            ],
          ),
        ),
      ),
    );
  }  
}
