import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.scale(
        scale: 1.5,
        child: Checkbox(
          activeColor: Colors.green,
          value: isChecked,
          onChanged: (bool? checkStatus) {
            setState(() {
              isChecked = checkStatus;
            });
          },
        ),
      ),
    );
  }
}
