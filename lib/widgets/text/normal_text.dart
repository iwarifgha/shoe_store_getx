import 'package:flutter/material.dart';

class NormalText extends StatelessWidget{
  double size;
  String text;
  Color color;
  bool isThick;
  FontWeight? weight;


  NormalText({Key? key,
    required this.text,
    this.weight,
    this.color = Colors.black,
    this.size = 15,
    this.isThick = false,
  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text,
      softWrap: true,
      style: TextStyle(
        fontFamily: 'Courier',
        fontSize: size,
        fontWeight: isThick == false && weight == null ? FontWeight.w300 : weight ,
        letterSpacing: 1,
        color: color,
       ),
    );
  }

}