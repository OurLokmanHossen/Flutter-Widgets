import 'package:flutter/material.dart';

class Textfeild1 extends StatelessWidget {
  const Textfeild1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              style: TextStyle(color: Colors.white, fontSize: 18),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.white),
                hintText: "Username",
                hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                fillColor: Colors.purple[500],
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue[600]!, width: 2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
