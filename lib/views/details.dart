
import 'package:flutter/material.dart';
import '../helpers/enums.dart';
import '../model/shoe_model.dart';
import '../widgets/helpers/cart.dart';
import '../widgets/helpers/quantity_widget.dart';
import '../widgets/text/bold_text.dart';
import '../widgets/text/normal_text.dart';
import '../widgets/text/shaded_text.dart';

class DetailsScreen extends StatefulWidget {
    const DetailsScreen({super.key, required this.product});

  final SmartBoot product;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Icon(Icons.arrow_back_ios_new),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.favorite_rounded),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 8.0, left: 15, bottom: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   BoldText(
                     text: widget.product.name,
                     size: 35,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 5,),
                     child: Text(widget.product.type == ShoeType.alien ? 'Alien' : 'AI',
                       style: const TextStyle(
                         //fontFamily: 'Courier',
                           fontWeight: FontWeight.w100,
                           fontSize: 15
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 20,
                     child: Row(
                       children: List.generate(5, (index) => const Icon(Icons.star)),
                     ),
                   ),
                 ],
               ),
               Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        const SizedBox(height: 100,),
                        RichText(
                            text: TextSpan(
                                text: '₦ ',
                                style: const TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold
                                ),
                                children: [
                                  TextSpan(
                                      text: widget.product.price,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Courier',
                                        fontSize: 30,
                                        color: Colors.black,
                                      )
                                  )
                                ]
                            )),
                        const SizedBox(height: 20,),
                        Column(
                          children: [
                            ShadedText(
                              text: 'Size',
                              size: 15,
                              weight: FontWeight.bold,
                            ),
                            Text(widget.product.size,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Courier',
                                fontSize: 15,
                              ),
                            ),
                           ],
                        ),
                        const SizedBox(height: 20,),
                        Column(
                          children: [
                            const Text('Intelligence',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Courier',
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Text(widget.product.intelligence,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Courier',
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 280,
                    transform: Matrix4.translationValues(150,10 , 0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(widget.product.imageAddress))
                    ),
                  ),
                ],
              ),
               const SizedBox(height: 30,),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const Text('About',
                     style: TextStyle(
                       color: Colors.black,
                       fontFamily: 'Courier',
                       fontWeight: FontWeight.bold,
                       fontSize: 20,
                     ),
                   ),
                   NormalText(
                       text: widget.product.description
                   )

                 ],
               ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        margin: const EdgeInsets.only(bottom: 8.0, left: 8, right: 8),
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const QuantityWidget(
              textSize: 28,
            ),
            Container(
              height: 55,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
              ),
               child: GestureDetector(
                 onTap: () {
                    //context.read<CartCubit>().addProduct(product: widget.product, context: context);
                 },
                 child: const Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.shopping_bag,
                      color: Colors.green,
                    ),
                    Text('Add to cart',
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Courier',
                          fontWeight: FontWeight.bold,
                          //fontSize: 16
                      ),
                    ),
                  ],
                 ),
               ),
            )
          ],
        ),
      ),
      //floatingActionButton: const CartWidget(),
    );
  }
}
