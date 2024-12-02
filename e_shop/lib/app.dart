import 'package:flutter/material.dart';
import './widgets/home_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "salman pattuara",
      home: Home(),
    );
  }
}
