import 'package:flutter/material.dart';

class ColorChange extends StatefulWidget {
  const ColorChange({super.key});

  @override
  State<ColorChange> createState() => _ColorChangeState();
}

class _ColorChangeState extends State<ColorChange> {
  int _counter = 0;
  Color _bgColor = Colors.white;

  void colorState() {
    setState(() {
      _counter++;
      _bgColor = (_bgColor == Colors.white)? Colors.black: Colors.blue;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgColor,
      floatingActionButton: FloatingActionButton(onPressed:colorState,child: Icon(Icons.add), ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Number: $_counter",style: TextStyle(color: Colors.green, fontSize: 20.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 20.0,),
            Text("Color: $_bgColor",style: TextStyle(color: Colors.green,fontSize: 20.0,fontWeight: FontWeight.bold),),

            
          ],
        ),
      ),
    );
  }
}