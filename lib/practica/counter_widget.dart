import 'dart:nativewrappers/_internal/vm/lib/developer.dart';

import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key,required this.count});

  final int count;

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {

  @override
  void didUpdateWidget(covariant CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    log("", name: "didUpdateWidget");
  }
  
  @override
  void dispose() {
    super.dispose();
    log("", name: "dispose");
  }

  
  @override
  Widget build(BuildContext context) {
    return Text("${widget.count}", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),);
  }
}