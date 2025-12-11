import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCounterPage(),
    );
  }
}


class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _counter = 0;

  void counterState() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Счетчик: $_counter",style: TextStyle(color: Colors.blueAccent,fontSize: 20.0,fontWeight: FontWeight.bold), ),
            SizedBox(height: 10.0,),
            ElevatedButton(onPressed: counterState, child: Text("Нажми меня")),
          ],
        ),
      ),
    );
  }
}