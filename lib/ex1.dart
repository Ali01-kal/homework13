import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      home: MyHomePage1(),
    );
  }
}


class MyHomePage1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter app"),
      ),
      body: Center(
        child:  Column(

        mainAxisAlignment:  MainAxisAlignment.center,
        crossAxisAlignment:  CrossAxisAlignment.center,
        children: [
          Text("Hello Flutter!",style:  TextStyle(color: Colors.blue,fontSize: 24.0,),),
          SizedBox(height: 20.0,),
          Image.network("https://static0.howtogeekimages.com/wordpress/wp-content/uploads/2025/03/porsche-911-carrera-gts-hybrid-2.jpg?q=49&fit=crop&w=825&dpr=2"),
          ElevatedButton(onPressed: () {print("clicked");} , child: Text("Click me")),
        ],
      ),
    ),
    );
  }
}