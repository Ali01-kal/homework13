import 'dart:developer';

import 'package:flutter/material.dart';

class DarkMode extends StatefulWidget {
  const DarkMode({super.key});

  @override
  State<DarkMode> createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  bool isDark = false;

  @override
  void initState() {
    super.initState();
    log("initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    log("didChangeDependencies");
  }

  @override
  void dispose() {
    super.dispose();
    log("dispose");
  }

  void darkState() {
    setState(() {
      isDark =! isDark;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: isDark? Colors.white: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(onPressed: darkState, label: Text("Change the teme")),
          ],
        ),
      ),
    );
  }
}