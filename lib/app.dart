import 'package:android_flutter/home/home_page.dart';
import 'package:flutter/material.dart';

class Flutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage().buildPage(null),
    );
  }
}