import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const Ex00App());
}

class Ex00App extends StatelessWidget {
  // Need superkey to keep app state consistent when hot-reloading
  const Ex00App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ex00",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
