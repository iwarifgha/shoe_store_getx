import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller/controller.dart';
import '../helpers/enums.dart';
import '../mock_data/product_list.dart';
import '../widgets/helpers/product_card.dart';
import '../widgets/helpers/search_bar.dart';
import '../widgets/helpers/shoe_store_app_bar.dart';
import 'details.dart';

class HomeScreen extends StatelessWidget {
    HomeScreen({super.key});

    final ShoeStoreController controller = Get.put(ShoeStoreController());
    List<ShoeType> filter = [ShoeType.ai, ShoeType.alien];




  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final itemHeight = size.height/2.5;
    final itemWidth = size.width /2;
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          const SliverAppBar(
            surfaceTintColor: Colors.transparent,
            snap: true,
            floating: true,
            bottom: PreferredSize(
                preferredSize: Size(double.infinity, 50),
                child: ShoeStoreAppBar(),
            ),
          )
        ];
      },
      body: Obx(()=> Column(
        children: [
          const SizedBox(height: 5),
          const ShoeStoreSearchBar(),
          Expanded(
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: filter.map((type) => FilterChip(
                      selected: controller.filteredTypes.contains(type),
                      label: Text(type == ShoeType.alien ? 'Alien' : 'AI'),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      onSelected: (selected){
                        if(selected){
                          controller.add(type);
                          print('added');
                        } else {
                          controller.remove(type);
                          print('removed');
                        }
                      }
                  )).toList() ,
                ),
                const SizedBox(height: 15),
                GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: (itemWidth / itemHeight) ,
                    ),
                    itemCount: controller.filterShoes().length,
                    itemBuilder: (context, index){
                      final products = controller.filterShoes();
                      return ShoeStoreProductCard(
                        product: products[index],
                        onTap: () {
                          Get.to(DetailsScreen(
                            product: products[index],
                          ));
                        },
                      );
                    }
                )
              ],
            ),
          ),
        ],
      ))
    );
  }
}
