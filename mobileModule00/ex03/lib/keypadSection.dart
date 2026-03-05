import 'package:flutter/material.dart';

class KeypadSection extends StatelessWidget {
  final void Function(String) onButtonPressed;

  const KeypadSection({super.key, required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    final List<List<String>> buttonRows = [
      ["7", "8", "9", "C", "AC"],
      ["4", "5", "6", "+", "-"],
      ["1", "2", "3", "x", "/"],
      ["0", ".", "00", "=", ""],
    ];

    return Expanded(
      flex: 2,
      child: LayoutBuilder(
        builder: (context, constraints) {
          bool isLandscape = constraints.maxHeight < 300;
          double fontSize = isLandscape ? 18 : 28;
          double paddingValue = isLandscape ? 2.0 : 4.0;

          return Container(
            color: Colors.blueGrey[800],
            padding: EdgeInsets.all(paddingValue),
            child: Column(
              children: buttonRows.map((row) {
                return Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: row.map((text) {
                      if (text.isEmpty) {
                        return const Expanded(child: SizedBox.shrink());
                      }

                      return Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(paddingValue),
                          child: TextButton(
                            onPressed: () => onButtonPressed(text),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blueGrey[700],
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Text(
                              text,
                              style: TextStyle(fontSize: fontSize),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
