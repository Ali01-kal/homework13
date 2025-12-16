import 'package:flutter/material.dart';
import 'package:flutter_application_my_app/homework13/details..dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Главный экран'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailsScreen(
                  detailText: 'Привет из MainScreen',
                ),
              ),
            );
          },
          child: const Text('Перейти к деталям'),
        ),
      ),
    );
  }
}
