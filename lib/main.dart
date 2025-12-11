import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_my_app/content_view.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child:Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: [
              Text(
                "Hello flutter",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
                  
                ),
              ),
              const SizedBox(height: 20.0),
              ContentView(imagePath: "assets/images/image.jpg"),
              ContentView(imagePath: "assets/images/like.jpg"),
              const SizedBox(height: 20.0),
              ElevatedButton(onPressed: () {}, child: Text("click me")),
              
            ],
          ),
        ),
      ),
    );
  }

}


  