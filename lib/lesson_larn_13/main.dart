import 'package:flutter/material.dart';
import 'package:flutter_application_my_app/lesson_larn_13/detail_screen.dart';
import 'package:flutter_application_my_app/lesson_larn_13/home_screen.dart';
import 'package:flutter_application_my_app/lesson_larn_13/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/home": (context) => HomeScreen1(),
        "/detail": (context) => DetailScreen(),
        "/settings":(context) {
          final arguments = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
          return SettingsScreen(
          title: arguments['title'] as String,
          description: arguments["description"] as String,
          );
        }
          
      }
        );
  }
}