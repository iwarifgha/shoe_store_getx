import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../helpers/enums.dart';
import '../mock_data/product_list.dart';
import '../model/shoe_model.dart';

class ShoeStoreController extends GetxController{

  final List<SmartBoot> _products = listOfShoes.obs;

  final RxList filteredTypes = [].obs;


  List<SmartBoot> filterShoes(){
    return _products.where((product) {
      return filteredTypes.isEmpty || filteredTypes.contains(product.type);
    }).toList();
  }

  add(ShoeType type){
    filteredTypes.add(type);
  }

  remove(ShoeType type){
    filteredTypes.remove(type);
  }
}