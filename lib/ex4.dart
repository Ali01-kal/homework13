import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("Welcome to Flutter"),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Image.network("https://miro.medium.com/v2/resize:fit:1200/1*4vlkTJCWbP2Kh2vyK9BdEw.png"),
                ),
                ElevatedButton(onPressed: () {print("Clicked");}, child: Text("Click me")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.home ,size: 40, color: Colors.amber,),
                    SizedBox(height: 10.0,),
                    Icon(Icons.star ,size: 40, color: Colors.amber,),
                    SizedBox(height: 10.0,),
                    Icon(Icons.person ,size: 40, color: Colors.amber,),
                    SizedBox(height: 10.0,)

                  ],
                )
          ],
        ),
      ),
    );
  }
}