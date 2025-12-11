import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  // ---------------- Lifecycle #1 ----------------
  @override
  void initState() {
    super.initState();
    print("INIT STATE: Виджет жасалды (counter = $counter)");
  }

  // ---------------- Lifecycle #2 ----------------
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("DID CHANGE DEPENDENCIES: Flutter жүйелік тәуелділіктер тексерілді");
  }

  // ---------------- Lifecycle #3 (UI салу) ----------------
  @override
  Widget build(BuildContext context) {
    print("BUILD: UI қайта салынды (counter = $counter)");

    return Scaffold(
      appBar: AppBar(title: Text("Lifecycle Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Санау: $counter',
              style: TextStyle(fontSize: 30),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                // ---------------- State өзгерді ----------------
                setState(() {
                  counter++;
                  print("SETSTATE: counter өсірілді --> $counter");
                });
              },
              child: Text("Артыру"),
            ),
          ],
        ),
      ),
    );
  }

  // ---------------- Lifecycle #4 ----------------
  @override
  void didUpdateWidget(covariant CounterScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("DID UPDATE WIDGET: Parent widget parameter өзгерді");
  }

  // ---------------- Lifecycle #5 ----------------
  @override
  void dispose() {
    print("DISPOSE: Виджет жойылды (ресурстар тазартылды)");
    super.dispose();
  }
}
