import 'package:flutter/material.dart';

class ChangeWidget extends StatefulWidget {
  const ChangeWidget({super.key});

  @override
  State<ChangeWidget> createState() => _ChangeWidgetState();
}

class _ChangeWidgetState extends State<ChangeWidget> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);
  final ValueNotifier<String> _message = ValueNotifier<String>("Нажми кнопку");
  final ValueNotifier<bool> _isDark = ValueNotifier<bool>(false);

  void incrementCounter() {
    _counter.value++;
    if (_counter.value <= 0) {
      _message.value = "Нажми кнопку";
    } else if (_counter.value <= 5) {
      _message.value = "Хорошее начало";
    } else {
      _message.value = "Вот это скорость";
    }
  }

  void toggleTheme() {
    _isDark.value = !_isDark.value;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isDark,
      builder: (context, isDark, _) {
        final textColor = isDark ? Colors.white : Colors.black;
        return Scaffold(
          backgroundColor: isDark ? Colors.black : Colors.white,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ValueListenableBuilder<int>(
                  valueListenable: _counter,
                  builder: (context, counter, _) => Text(
                    "Сан: $counter",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ValueListenableBuilder<String>(
                  valueListenable: _message,
                  builder: (context, message, _) => Text(
                    message,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: incrementCounter,
                  child: Text(
                    "Нажми кнопку",
                    style: TextStyle(color: textColor, fontSize: 20),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: toggleTheme,
                  icon: Icon(Icons.color_lens, color: textColor),
                  label: Text(
                    "Change theme",
                    style: TextStyle(color: textColor, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
