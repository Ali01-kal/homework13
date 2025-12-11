import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row & Column Мысал"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            /// COLUMN  ішіндегі TEXT
            Text(
              "Column элементтері:",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 15),

            Text("Бірінші"),
            Text("Екінші"),
            Text("Үшінші"),

            SizedBox(height: 30),

            /// ROW МЫСАЛЫ
            Text(
              "Row элементтері:",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, size: 30),
                SizedBox(width: 15),
                Icon(Icons.star, size: 30),
                SizedBox(width: 15),
                Icon(Icons.star, size: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
