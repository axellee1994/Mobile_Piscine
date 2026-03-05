import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// To hold the data overtime
class _HomePageState extends State<HomePage> {
  bool _isHelloWorld = false;
  void _toggleText() {
    setState(() {
      _isHelloWorld = !_isHelloWorld;
    });
    debugPrint('State has been changed to $_isHelloWorld');
  }

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
              child: Text(
                // Flip between A or B based on boolean
                _isHelloWorld ? 'Hello World' : 'A simple text',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _toggleText();
                debugPrint('Button pressed');
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shadowColor: Colors.transparent,
                backgroundColor: Colors.grey[200],
                foregroundColor: const Color(0xFF6B702B),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
              child: const Text('Click me'),
            ),
          ],
        ),
      ),
    );
  }
}
