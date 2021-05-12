import 'package:flutter/material.dart';

class SingleLineText extends StatefulWidget {
  @override
  _SingleLineTextState createState() => _SingleLineTextState();
}

class _SingleLineTextState extends State<SingleLineText> {
  String titleName = "title";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titleName,
          style: TextStyle(),
        ),
        TextField()
      ],
    );
  }
}
