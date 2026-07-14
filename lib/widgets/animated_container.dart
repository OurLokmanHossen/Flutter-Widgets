import 'package:flutter/material.dart';

class animatedContainer extends StatefulWidget {
  const animatedContainer({super.key});

  @override
  State<animatedContainer> createState() => _animatedContainerState();
}

class _animatedContainerState extends State<animatedContainer> {
  bool selected = false;

  void doAnimate() {
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            AnimatedContainer(
              // curve: Curves.bounceIn,
              duration: Duration(seconds: 3),
              height: selected ? 300 : 200,
              width: selected ? 300 : 200,
              color: selected ? Colors.blue : Colors.purple,
            ),

            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                minimumSize: Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: doAnimate,
              child: Text("Do Animate", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
