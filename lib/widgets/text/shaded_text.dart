import 'package:flutter/material.dart';

class ShadedText extends StatelessWidget{
  double size;
  String text;
  Color color;
  bool isItalic;
  FontWeight weight;



  ShadedText({Key? key,
    required this.text,
    this.weight = FontWeight.w400 ,
    this.color = Colors.grey,
    this.size = 30,
    this.isItalic = false
  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontStyle: isItalic == true? FontStyle.italic : FontStyle.normal ,
      fontFamily: 'Courier',
      fontSize: size,
      fontWeight: weight,
      letterSpacing: 1,
      color: color,
      overflow: TextOverflow.visible,

    ), );
  }

}