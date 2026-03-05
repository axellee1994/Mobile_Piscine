import 'package:flutter/material.dart';
import 'calculator.dart';

void main() {
  runApp(const Ex02App());
}

class Ex02App extends StatelessWidget {
  // Need superkey to keep app state consistent when hot-reloading
  const Ex02App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const CalculatorPage(),
    );
  }
}
