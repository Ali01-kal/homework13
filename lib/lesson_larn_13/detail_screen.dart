import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.ac_unit),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: TextButton(
           onPressed: () {
            Navigator.pushNamed(
                    context, "/settings",
                    arguments: {
                      "title":"Привет Мир",
                      "description": "sadasdsadasda",
                    }
                    );
           },
           child: Text("Настройки")
           ),
          ),
        ),
    );
  }
}