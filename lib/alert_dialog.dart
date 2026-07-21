import 'package:flutter/material.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({super.key});

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          // backgroundColor: Colors.purple[100],
          icon: Icon(Icons.escalator_warning_rounded, size: 60),
          title: Text(
            "Are you sure ?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: Text(
            'Subtitle, Info about thing',
            style: TextStyle(fontSize: 20),
          ),
          actions: [
            MaterialButton(
              color: Colors.black87,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("YES", style: TextStyle(color: Colors.white70)),
            ),
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cencel"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        color: Colors.black87,
        onPressed: () {
          _showAlert(context);
        },
        child: Text(
          "Alert Button",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
