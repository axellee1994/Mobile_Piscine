import 'package:flutter/material.dart';

class WeatherView extends StatelessWidget {
  final String tabName;
  final String location;

  const WeatherView({super.key, required this.tabName, required this.location});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            tabName,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          if (location.isNotEmpty)
            Text(location, style: const TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}
