import 'package:flutter/material.dart';

class DisplaySection extends StatelessWidget {
  final String expression;
  final String result;

  const DisplaySection({
    super.key,
    required this.expression,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.blueGrey[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Expression Field
            TextField(
              // Change this to use expression from state when implemented
              controller: TextEditingController(text: expression),
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 32, color: Colors.black54),
              decoration: const InputDecoration(border: InputBorder.none),
            ),

            // Result TextField
            TextField(
              controller: TextEditingController(text: result),
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              decoration: const InputDecoration(border: InputBorder.none),
            ),
          ],
        ),
      ),
    );
  }
}
