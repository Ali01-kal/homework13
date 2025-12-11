import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(child:  Center(
        child: Column(
          children: [
            Text("Вход", style: TextStyle(color: Colors.black,fontSize: 20.0),)
          ],
        ),
      ),
      ),
    );
  }
}
