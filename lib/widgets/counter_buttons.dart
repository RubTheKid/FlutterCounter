import 'package:flutter/material.dart';

class CounterButtons extends StatelessWidget {
  final bool isEmpty;
  final bool isFull;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CounterButtons({
    Key? key,
    required this.isEmpty,
    required this.isFull,
    required this.onIncrement,
    required this.onDecrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: isEmpty ? null : onDecrement,
          style: TextButton.styleFrom(
            backgroundColor: isEmpty ? Colors.white.withOpacity(0.2) : Colors.white,
            fixedSize: const Size(100, 100),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          child: const Text(
            "Saiu",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        TextButton(
          onPressed: isFull ? null : onIncrement,
          style: TextButton.styleFrom(
            backgroundColor: isFull ? Colors.white.withOpacity(0.2) : Colors.white,
            fixedSize: const Size(100, 100),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          child: const Text(
            "Entrou",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
