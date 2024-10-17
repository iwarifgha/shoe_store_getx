import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoeAppBottomBar extends StatefulWidget {
  const ShoeAppBottomBar({super.key,
    required this.items,
    required this.currentIndex,
    required this.onTap
  });

  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  final ValueChanged<int> onTap;


  @override
  State<ShoeAppBottomBar> createState() => _ShoeAppBottomBarState();
}

class _ShoeAppBottomBarState extends State<ShoeAppBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: widget.currentIndex ,
          items: widget.items,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(
            fontFamily: 'Courier'
          ),
          unselectedLabelStyle: const TextStyle(
              fontFamily: 'Courier'
          ),
          onTap: (index){
            widget.onTap(index);
          },
      ),
    )
    );
  }
}
