import 'package:flutter/material.dart';
import 'package:tunes/homePage.dart';

void main() {
  runApp(const tunesApp());
}

class tunesApp extends StatelessWidget {
  const tunesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
