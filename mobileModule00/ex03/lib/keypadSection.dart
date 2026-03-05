import 'package:flutter/material.dart';

class KeypadSection extends StatelessWidget {
  // Callback function for button presses - will be passed from parent widget  
  final void Function(String) onButtonPressed;

  const KeypadSection({super.key, required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    final List<List <String>> buttonRows = [
        ["7", "8", "9", "C", "AC"],
        ["4", "5", "6", "+", "-"],
        ["1", "2", "3", "x", "/"],
        ["0", ".", "00", "=", ""],
    ];

return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blueGrey[800],
        padding: const EdgeInsets.all(4),
        child: Column(
          children: buttonRows.map((row) {
            return Expanded(
              child: Row(

                // This forces button to stretch across and fill all the available space
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: row.map((text) {
                  if (text.isEmpty) {
                    return const Expanded(child: SizedBox.shrink());
                  }

                  // To make each button fills the horizontal space equally
                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TextButton(
                        onPressed: () => onButtonPressed(text),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blueGrey[700],
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          text,
                          style: const TextStyle(fontSize: 28),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}