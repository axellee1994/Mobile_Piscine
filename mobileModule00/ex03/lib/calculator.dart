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
    if (_expression == '0' || _expression == '-') return;

    try {
      String finalExpression = _expression
          .replaceAll('×', '*')
          .replaceAll('x', '*')
          .replaceAll('X', '*')
          .replaceAll('÷', '/');

      RegExp expEnd = RegExp(r'[+\-*/xX÷×]$');
      while (expEnd.hasMatch(finalExpression)) {
        finalExpression = finalExpression.substring(
          0,
          finalExpression.length - 1,
        );
      }

      Parser p = Parser();
      Expression exp = p.parse(finalExpression);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);

      setState(() {
        if (eval.isInfinite || eval.isNaN) {
          _result = "Undefined";
        } else {
          if (eval == eval.toInt()) {
            _result = eval.toInt().toString();
          } else {
            _result = eval.toStringAsFixed(8);
            while (_result.contains('.') &&
                (_result.endsWith('0') || _result.endsWith('.'))) {
              _result = _result.substring(0, _result.length - 1);
            }
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
          break;
        case "AC":
          _expression = '0';
          _result = '0';
          break;
        case "=":
          _evaluateExpression();
          break;
        default:
          if (_expression == '0') {
            if (text == '-') {
              _expression = '-';
            } else if (text == '.') {
              _expression = '0.';
            } else if (text == '00') {
              _expression = '0';
            } else if (int.tryParse(text) != null) {
              _expression = text;
            }
          } else {
            String lastChar = _expression[_expression.length - 1];
            List<String> operators = ['+', '-', 'x', 'X', '/', '×'];

            if (text == '.' && lastChar == '.') return;

            if (operators.contains(lastChar) && operators.contains(text)) {
              _expression =
                  _expression.substring(0, _expression.length - 1) + text;
            } else {
              _expression += text;
            }
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
