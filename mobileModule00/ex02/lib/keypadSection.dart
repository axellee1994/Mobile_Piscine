import 'package:flutter/material.dart';

class KeypadSection extends StatelessWidget {
  // Callback function for button presses - will be passed from parent widget  
  final void Function(String) onButtonPressed;

  const KeypadSection({super.key, required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    final List<String> buttons = [
        "7", "8", "9", "C", "AC",
        "4", "5", "6", "+", "-",
        "1", "2", "3", "x", "/",
        "0", ".", "00", "=", "",
    ];

    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blueGrey[800],
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: buttons.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            final text = buttons[index];

            if (text.isEmpty) {
              return const SizedBox.shrink();
            }

            return TextButton(
              // This passes the specific button's text
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
            );
          },
        ),
      ),
    );
  }
}