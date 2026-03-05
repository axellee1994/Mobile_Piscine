import 'package:flutter/material.dart';
import 'displaySection.dart';
import 'keypadSection.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String _expression = '0';
  String _result = '0';

  void _evaluateExpression() {
    try {
      Parser p = Parser();
      String finalExpression = _expression
          .replaceAll('×', '*')
          .replaceAll('x', '*')
          .replaceAll('X', '*')
          .replaceAll('÷', '/');
      Expression exp = p.parse(finalExpression);
      ContextModel cm = ContextModel();

      double eval = exp.evaluate(EvaluationType.REAL, cm);

      setState(() {
        if (eval.isInfinite || eval.isNaN) {
          _result = "Error";
        } else {
          _result = eval.toString();
          if (_result.endsWith('.0')) {
            _result = _result.substring(0, _result.length - 2);
          }
        }
      });
    } catch (e) {
      setState(() {
        _result = "Error";
      });
    }
  }

  void _onButtonPressed(String text) {
    if (text.isEmpty) return;

    setState(() {
      switch (text) {
        case "C":
          if (_expression.length > 1) {
            _expression = _expression.substring(0, _expression.length - 1);
          } else {
            _expression = '0';
          }
          debugPrint('Button pressed: Clear last entry');
          break;
        case "AC":
          _expression = '0';
          _result = '0';
          debugPrint('Button pressed: Clear all entries');
          break;
        case "=":
          _evaluateExpression();
          debugPrint('Button pressed: Calculate result');
          break;
        default:
          if (_expression == '0' &&
              text != '.' &&
              text != '+' &&
              text != '-' &&
              text != '*' &&
              text != '/') {
            _expression = text;
          } else {
            _expression += text;
          }
          debugPrint('Button pressed: $text');
      }
    });
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
          DisplaySection(expression: _expression, result: _result),
          KeypadSection(onButtonPressed: _onButtonPressed),
        ],
      ),
    );
  }
}
