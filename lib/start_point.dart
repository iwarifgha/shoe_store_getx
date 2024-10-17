import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; 
import 'package:shoe_store_getx/views/favorites.dart';
import 'package:shoe_store_getx/views/orders.dart';
import 'package:shoe_store_getx/views/profile.dart';
import 'package:shoe_store_getx/widgets/helpers/shoe_app_bottom_bar.dart';

import 'views/home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {

  List screens = [
    HomeScreen(),
    const ProfileScreen(),
    const FavoritesScreen(),
    const OrdersScreen()
  ];


 int screenIndex = 0;


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: screens[screenIndex],
      bottomNavigationBar: ShoeAppBottomBar(
        items: const  [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled) , label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_rounded) , label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag) , label: 'Promo'),
          BottomNavigationBarItem(icon: Icon(Icons.discount) , label: 'Orders'),
        ],
        currentIndex: screenIndex,
        onTap: (int value) {
          setState(() {
            screenIndex = value;
          });
        },
      )
    );
  }
}
