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
      home: MyHomePage3(),
    );
  }
}


class MyHomePage3 extends StatelessWidget{
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
            Container(
              // width: 20,
              color: Colors.blue,
              child: Padding(padding: EdgeInsets.all(20.0),
              child: Text("container + padding",style: TextStyle(color: Colors.amber),),
              ),
            ),
            SizedBox(height: 30.0,),
            Image.network("https://avatars.mds.yandex.net/get-autoru-vos/5207325/c7daa0281df1cec5075befde0a3d9b86/1200x900",
            // width: 20.0,
            // height: 20.0,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Click me")),
          ],
        ),
      ),
    );
  }
}