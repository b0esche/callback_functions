import 'package:flutter/material.dart';

class CounterBox extends StatefulWidget {
  final Color color;
  final void Function(int stringLength) onChanged;

  const CounterBox({
    super.key,
    required this.color,
    required this.onChanged,
  });

  @override
  State<CounterBox> createState() => _CounterBoxState();
}

class _CounterBoxState extends State<CounterBox> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 140,
        width: 360,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _count = value.length;
                  });
                  widget.onChanged(_count);
                },
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              const SizedBox(height: 8),
              Text("Länge: $_count"),
            ],
          ),
        ),
      ),
    );
  }
}
