import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/animated_container.dart';
import 'package:flutter_widgets/widgets/clipRRect.dart';
import 'package:flutter_widgets/widgets/expanded.dart';
import 'package:flutter_widgets/widgets/listView.dart';
import 'package:flutter_widgets/widgets/textfeild.dart';
import 'package:flutter_widgets/widgets/wrap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: animatedContainer()));
  }
}
