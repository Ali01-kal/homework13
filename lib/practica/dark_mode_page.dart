import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_application_my_app/practica/counter_widget.dart';

class DarkModePage extends StatefulWidget {
  const DarkModePage({super.key});

  @override
  State<DarkModePage> createState() => _DarkModePageState();
}

class _DarkModePageState extends State<DarkModePage> {
  bool _isDarkMode = false;

  int _counter = 0;

  @override
  void initState() {
    super.initState();
    log("InitState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    log("didChangeDependencies");
  }

  @override
  void didUpdateWidget(covariant DarkModePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    log("didUpdateWidget");
  }

  @override
  void dispose() {
    log("dispose");
    super.dispose();
  }

  void changeTheTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }


  void _increment() {
    _counter++;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
           Colors.white,

           floatingActionButton: FloatingActionButton(onPressed: _increment, child: Icon(Icons.plus_one ),),
      body: Center(
        child:CounterWidget(count: _counter),
      ),
    );
  }
}
