import 'package:flutter/material.dart';
import 'displaySection.dart';
import 'keypadSection.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  void _onButtonPressed(String text) {
    switch (text) {
      case "":
        break;
      case "C":
        debugPrint('Clear last entry');
        break;
      case "AC":
        debugPrint('Clear all entries');
        break;
      case "=":
        debugPrint('Calculate result');
        break;
      default:
        debugPrint('Button pressed: $text');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const DisplaySection(),
          KeypadSection(onButtonPressed: _onButtonPressed),
        ],
      ),
    );
  }
}
