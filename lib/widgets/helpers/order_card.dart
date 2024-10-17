import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoe_store_getx/widgets/helpers/price_tag_widget.dart';
import 'package:shoe_store_getx/widgets/helpers/quantity_widget.dart';

import '../../model/shoe_model.dart';
import '../text/bold_text.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key, required this.product});

  final SmartBoot product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8, right: 8, left: 30),
      child: Container(
        height: 120,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                 backgroundImage: AssetImage(product.imageAddress),
                 radius: 50,
               ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 8,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoldText(
                        text: product.name,
                      size: 20,
                    ),
                    const SizedBox(height: 25,),
                    Row(
                      children: [
                        Price(price: product.price),
                        const SizedBox(width: 60,),
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(1, 0),
                                color: Colors.grey.shade50,
                                blurStyle: BlurStyle.outer
                              ),
                              BoxShadow(
                                  color: Colors.grey.shade50,
                                  offset: const Offset(0, 1),
                                  blurStyle: BlurStyle.outer
                              ),
                              BoxShadow(
                                  offset: const Offset(0, 0),
                                  color: Colors.grey.shade50,
                                  blurStyle: BlurStyle.outer
                              ),
                            ]
                          ),
                          child: const QuantityWidget(
                              textSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
