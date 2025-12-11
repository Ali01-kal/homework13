import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  int counter = 0;
  int colorIndex = 0;
  @override
void initState() {
  super.initState();
  log("initState", name: "LIFECYCLE");
}

@override
void didChangeDependencies() {
  super.didChangeDependencies();
  log("didChangeDependencies", name: "LIFECYCLE");
}

@override
void didUpdateWidget(covariant MyWidget oldWidget) {
  super.didUpdateWidget(oldWidget);
  log("didUpdateWidget", name: "LIFECYCLE");
}

@override
void dispose() {
  super.dispose();
  log("dispose", name: "LIFECYCLE");
}

  final List<Color> colors = [
    Colors.white,
    Colors.pink,
    Colors.blue,
    Colors.green
  ];
 
  String get message {
  if(counter == 0) return "Нажми кнопку";
  if(counter <= 7) return "Хорошое начало";
  if(counter > 8) return "Вот это скорость";
  return "продолжаем";
  }

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void colorChange() {
    setState(() {
      colorIndex = (colorIndex + 1) % colors.length;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors[colorIndex],
      appBar: AppBar(
        title: Text("Flutter Application"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Счетчик: $counter",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 20.0,),
            Text(message,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            Row(
  children: [
    Expanded(child: ElevatedButton(onPressed: incrementCounter, child: Text("Нажми"))),
    SizedBox(width: 10),
    Expanded(child: ElevatedButton(onPressed: colorChange, child: Text("Тема"))),
    SizedBox(width: 10),
    Expanded(child: ElevatedButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
    }, child: Text("Второй экран"))),
  ],
)
          ],
          
        ),
      ),
    );
  }
}


// second page

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second page"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {Navigator.pop(context);}, child: Text("Назад")),
      ),
    );
  }
}