import 'package:flutter/material.dart';


class ShoeStoreAppBar extends StatelessWidget {
  const ShoeStoreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Smart Steps,',
                   style: TextStyle(
                    fontSize: 25
                  )
                ),
                 Text(
                  'Smart Journeys',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),
                )
              ],
            ),
           ],
        ),
      ),
    );
  }
}
