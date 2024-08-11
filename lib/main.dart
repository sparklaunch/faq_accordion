import 'package:faq_accordion/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: "WorkSans",
      ),
      home: const Scaffold(
        backgroundColor: Color.fromRGBO(240, 227, 249, 1),
        body: MainScreen(),
      ),
    ),
  );
}
