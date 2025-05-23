import 'package:callback_functions/custom_button.dart';
import 'package:flutter/material.dart';

class CounterBox extends StatefulWidget {
  final Color color;
  final void Function(int c) onChanged;

  const CounterBox({super.key, required this.color, required this.onChanged});

  @override
  State<CounterBox> createState() => _CounterBoxState();
}

class _CounterBoxState extends State<CounterBox> {
  // State
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
    widget.onChanged(_count);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 300,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            onPressed: () {
              _increment();
            },
            text: "Klick!",
          ),
          Text("$_count"),
        ],
      ),
    );
  }
}
