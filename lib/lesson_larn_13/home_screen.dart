import 'package:flutter/material.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: Text("Детали"),
                 onPressed: () {
                  Navigator.pushNamed(
                    context, "/detail"
                    );
                 },
                 ),
                 TextButton(
                  child: Text("Настройки"),
                 onPressed: () {
                  Navigator.pushNamed(
                    context, "/settings",
                    arguments: {
                      "title":"Привет Мир",
                      "description": "sadasdsadasda",
                    }
                    );
                 },
                 ),
            ],
          ),
        )),
    );
  }
}