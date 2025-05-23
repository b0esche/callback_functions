import 'package:flutter/material.dart';
import 'counter_box.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _lengthGreen = 0;
  int _lengthBlue = 0;
  int _lengthPink = 0;
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
              onChanged: (length) {
                setState(() {
                  _lengthGreen = length;
                });
              },
            ),
            CounterBox(
              color: Colors.cyan,
              onChanged: (length) {
                setState(() {
                  _lengthBlue = length;
                });
              },
            ),
            CounterBox(
              color: Colors.purpleAccent,
              onChanged: (length) {
                setState(() {
                  _lengthPink = length;
                });
              },
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Gesamte Länge: ${_lengthGreen + _lengthBlue + _lengthPink}",
            ),
          ],
        ),
      ),
    );
  }
}
