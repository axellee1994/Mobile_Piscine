import 'package:flutter/material.dart';

class DisplaySection extends StatelessWidget {
  const DisplaySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: double.infinity, // Ensure it takes full width
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        color: Colors.blueGrey[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Expression Field - Wrapped in Flexible and FittedBox
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  '0',
                  style: const TextStyle(fontSize: 32, color: Colors.black54),
                ),
              ),
            ),

            // Result Field - Wrapped in Flexible and FittedBox
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  '0',
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
