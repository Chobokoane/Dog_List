import 'package:dog_api/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dog List',
      theme: ThemeData(brightness: Brightness.dark),
      home: HomeView(),
    );
  }
}

