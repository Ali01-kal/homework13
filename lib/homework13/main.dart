import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_my_app/homework13/MainScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Навигация в Flutter',
      theme: ThemeData(
         primarySwatch: Colors.blue,
         useMaterial3: true,
      ),
       home: const MainScreen(),
    );
  }
}