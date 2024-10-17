import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../mock_data/product_list.dart';
import '../widgets/helpers/order_card.dart';
import '../widgets/text/shaded_text.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new,
          size: 21,
        ),
        centerTitle: true,
        title: ShadedText(
          text: 'My Orders',
          color: Colors.black,
          size: 20,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: listOfShoes.length,
                itemBuilder: (context,index ){
                  return OrderCard(
                    product: listOfShoes[index],);
                }),
          ),

        ],
      ),
    );
  }
}
