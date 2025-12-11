import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      home: MyHomePage4(),
    );
  }
}
 

class MyHomePage4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(20.0),
            child: Text("Добро пожаловать по Flutter!"),),
            Padding(padding: EdgeInsets.all(20.0),
            child: Image.network("https://miro.medium.com/v2/resize:fit:1200/1*4vlkTJCWbP2Kh2vyK9BdEw.png"),
            ),
            ElevatedButton(onPressed: () {print("Clicked");}, child: Text("Нажми меня")),
          ],
          
        ),
      ),
        
    
      );
  }
}


