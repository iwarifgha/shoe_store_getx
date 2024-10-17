import 'package:flutter/material.dart';

class BoldText extends StatelessWidget{
  double size;
  String text;
  Color color;


  BoldText({Key? key,
    required this.text,
    this.color = Colors.black87,
    this.size = 25}):
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        fontFamily: 'Courier',
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: color,
        overflow: TextOverflow.visible,
      ), );
  }
}