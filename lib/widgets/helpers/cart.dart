import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../model/shoe_model.dart';

/*class CartWidget extends StatefulWidget {
  const CartWidget({super.key,});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (BuildContext context, state) {
        //final List<SmartBoot> items = state.items;
        if (state is ProductAddedToCart){
          return Stack(
            children: [
              const Icon(
                Icons.shopping_cart,
                size: 30,
              ),
              Container(
                transform: Matrix4.translationValues(10, -10, 0),
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: Center(
                    child: Text(state.items.length.toString())),
              )
            ],
          );
        }
        else{
          return Stack(
            children: [
              const Icon(
                Icons.shopping_cart,
                size: 30,
              ),
              Container(
                transform: Matrix4.translationValues(10, -10, 0),
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: Center(
                    child: Text(state.items.length.toString())),
              )
            ],
          );
        }
      },
    );
  }
}*/
