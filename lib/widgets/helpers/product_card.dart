import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoe_store_getx/widgets/helpers/price_tag_widget.dart';

import '../../helpers/enums.dart';
import '../../model/shoe_model.dart';

class ShoeStoreProductCard extends StatelessWidget {
  const ShoeStoreProductCard({super.key,
    required this.product,
    required this.onTap
  });

  final SmartBoot product;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 100,
        margin: const EdgeInsets.only(left: 10, top: 50, right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18)
        ),
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 150,
              width: 140,
              transform: Matrix4.translationValues(0, -40, 0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit:  BoxFit.fill,
                      image: AssetImage(product.imageAddress)),
                  shape: BoxShape.circle
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, -35, 0),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.topCenter,
              width: 200,
              child: Text(product.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, -35, 0),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.topCenter,
              width: 100,
              child: Text(
                product.type == ShoeType.alien ? 'Alien' : 'AI',
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 9),
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Price(
                        price: product.price),
                    const Icon(
                        Icons.favorite_outline,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
