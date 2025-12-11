import 'package:flutter/material.dart';

class Screen_Widget extends StatefulWidget {
  const Screen_Widget({super.key});

  @override
  State<Screen_Widget> createState() => _Screen_WidgetState();
}

class _Screen_WidgetState extends State<Screen_Widget> {
  int _count = 0;
  void screenState(){
    setState(() {
      _count++;
    });
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Сан: $_count", style: TextStyle(color: Colors.white, fontSize: 20.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 20.0),
            ElevatedButton(onPressed: screenState, child: Text("Click me", style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),)),
          ],
        ),
      ),
    );
  }
}