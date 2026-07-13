import 'package:flutter/material.dart';

class Wrap1 extends StatelessWidget {
  const Wrap1({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      runSpacing: 10.0,
      // direction: Axis.vertical,
      children: [
        Container(height: 200, width: 200, color: Colors.red),
        Container(height: 200, width: 200, color: Colors.green),
        Container(height: 200, width: 200, color: Colors.purple),
        Container(height: 200, width: 200, color: Colors.blue),
      ],
    );
  }
}
