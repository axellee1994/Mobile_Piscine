import 'package:flutter/material.dart';

class DisplaySection extends StatelessWidget {
  const DisplaySection({super.key});

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
              // According to subject PDF, display 0 for now
              controller: TextEditingController(text: '0'),
              readOnly: true,
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 32, color: Colors.black54),
              decoration: const InputDecoration(border: InputBorder.none),
            ),

            // Result TextField
            TextField(
              controller: TextEditingController(text: '0'),
              readOnly: true,
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
