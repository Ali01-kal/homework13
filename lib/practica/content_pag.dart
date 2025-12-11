import 'package:flutter/material.dart';
import 'package:flutter_application_my_app/practica/dark_mode_page.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  String _message = "Нажми на кнопку";

  void _increment() {
    setState(() {
      _counter++;
      if(_counter >= 1 && _counter <= 5){
        _message = "Хорошое начало";
      }else if(_counter > 5){
        _message = "Вот это скорость";
      }

    });
  }

  void _decrement () {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
              "Счетчик",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
                Text(
              "$_counter",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold,color: Colors.blue),
            ),
              ],
            ),

            Text(
              _message,
              style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),

            ),
                TextButton(
          style: TextButton.styleFrom(
            backgroundColor:Colors.blue, 
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 5.0,
            ),
            
            ),
          onPressed: _increment, child: Text("Нажми меня",style: TextStyle(color: Colors.white),)),

          TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => DarkModePage())),
           child: Text("В экран с темной темой")),
          
              ],
            )
        
        )
      );
    
  }
}