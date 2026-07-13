import 'package:flutter/material.dart';

class ExpandedWidgets extends StatelessWidget {
  const ExpandedWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Image.network(
            'https://i.pinimg.com/1200x/32/5f/85/325f856c0c0320393a5205f94277dea7.jpg',
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Expanded(child: Container(color: Colors.blue[200]), flex: 2),
          Expanded(child: Container(color: Colors.purple[200])),
        ],
      ),
    );
  }
}
