import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(

                // Olive Green color hex code
                color: const Color(0xFF6B702B), 
                borderRadius: BorderRadius.circular(15), 
              ),
              child: const Text(
                'A    simple text',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                debugPrint('Button pressed');
              },
              style: ElevatedButton.styleFrom(
                elevation: 5,
                shadowColor: Colors.transparent,
                backgroundColor: Colors.grey[200],
                foregroundColor: const Color(0xFF6B702B),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: const Text('Click me'),
            ),
          ],
        ),
      ),
    );
  }
}