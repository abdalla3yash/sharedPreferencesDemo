import 'package:flutter/material.dart';
import 'package:sharedprefdemo/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sharedApp',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
