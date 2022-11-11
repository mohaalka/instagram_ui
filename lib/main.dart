import 'package:flutter/material.dart';
import 'homePage.dart';

void main() {
  runApp(InsApp());
}

class InsApp extends StatelessWidget {
  const InsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primaryColor: Colors.grey),
    );
  }
}
