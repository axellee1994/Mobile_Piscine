import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const Ex01App());
}

class Ex01App extends StatelessWidget {
  // Need superkey to keep app state consistent when hot-reloading
  const Ex01App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ex01",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
