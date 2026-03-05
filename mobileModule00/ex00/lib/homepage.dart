import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Make sure that it is centered both horizontal and vertical
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'A simple text',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            // Spacing between text and button
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                debugPrint('Button pressed');
              },
              child: const Text('Click me'),
            ),
          ],
        ),
      ),
    );
  }
}
