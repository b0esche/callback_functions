import 'package:flutter/material.dart';
import 'counter_box.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 24,
          children: [
            const SizedBox(height: 32),
            CounterBox(
              color: Colors.lime,
              onChanged: (text) => debugPrint("Box 1 Text: $text"),
            ),
            CounterBox(
              color: Colors.cyan,
              onChanged: (text) => debugPrint("Box 2 Text: $text"),
            ),
            CounterBox(
              color: Colors.purpleAccent,
              onChanged: (text) => debugPrint("Box 3 Text: $text"),
            ),
          ],
        ),
      ),
    );
  }
}
