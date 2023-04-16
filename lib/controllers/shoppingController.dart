import 'package:get/get.dart';

import '../models/shoppingModel.dart';
import '../services/shoppingService.dart';

class ShoppingController extends GetxController{
ShoppingService shopservice1 = ShoppingService();
var shoppingList1 =<Product>[].obs;
var shoppingList2 =<Product>[].obs;
var shoppingList3 =<Product>[].obs;
var shoppingList4 =<Product>[].obs;
var shoppingList5 =<Product>[].obs;
List cartItems =<Product>[].obs;
dynamic total=0;
var loading = true.obs;
void getData() async{
  Shopping shop1 =await shopservice1.getItems();
  shoppingList1.addAll(shop1.products);
  loading.value=false;
}
void getLaptop() async{
  Shopping shop1 =await shopservice1.getLaptops();
  shoppingList2.addAll(shop1.products);
  loading.value=false;
}
void getGroc() async{
  Shopping shop1 =await shopservice1.getGrocery();
  shoppingList3.addAll(shop1.products);
  loading.value=false;
}
void getFragr() async{
  Shopping shop1 =await shopservice1.getFrag();
  shoppingList4.addAll(shop1.products);
  loading.value=false;
}
void getSkinc() async{
  Shopping shop1 =await shopservice1.getskin();
  shoppingList5.addAll(shop1.products);
  loading.value=false;
}
}