import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../text/normal_text.dart';

class QuantityWidget extends StatelessWidget {
  const QuantityWidget({super.key,
    required this.textSize,
  });

  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          child: NormalText(
            text: '-',
            isThick: true,
            size: textSize,
            weight: FontWeight.bold,
          ),
          onTap: () {  },
        ),
        const SizedBox(width: 8,),
        NormalText(
          text: '1',
          isThick: false,
          size: textSize,
          weight: FontWeight.normal,
        ),
        const SizedBox(width: 8,),
        InkWell(
          child: NormalText(
            text: '+',
            isThick: true,
            size: textSize,
            weight: FontWeight.bold,
          ),
          onTap: () {  },
        ),
      ],
    );
  }
}
