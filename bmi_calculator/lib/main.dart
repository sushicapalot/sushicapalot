import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: Input(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
    ),
  );
}

