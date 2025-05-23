import 'package:callback_functions/counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // State
  int _totalCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 16,
          children: [
            CounterBox(
              color: Colors.blue,
              onChanged: (c) {
                setState(() {
                  _totalCount++;
                });
              },
            ),
            CounterBox(
              color: Colors.indigo,
              onChanged: (c) {
                setState(() {
                  _totalCount++;
                });
              },
            ),
            CounterBox(
              color: Colors.purpleAccent,
              onChanged: (c) {
                setState(() {
                  _totalCount++;
                });
              },
            ),
            Text("Zählerstand Gesamt: $_totalCount"),
          ],
        ),
      ),
    );
  }
}
