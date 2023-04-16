import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/shoppingApp/listViewWidget.dart';
import 'package:get/get.dart';

import '../controllers/shoppingController.dart';

class Laptops extends StatefulWidget {
  const Laptops({super.key});

  @override
  State<Laptops> createState() => _LaptopsState();

}

class _LaptopsState extends State<Laptops> {
  ShoppingController usersController = Get.find<ShoppingController>();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    usersController.getLaptop();  
    }

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: ListView.builder(
        shrinkWrap: true,
        itemCount: usersController.shoppingList2.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            child: ListViewWidget(
              product: usersController.shoppingList2[index],
              func: () {
                usersController.cartItems
                    .add(usersController.shoppingList2[index]);
                usersController.total = usersController.total +
                    usersController.cartItems[index].price;
                setState(() {});
              },
              text: 'Add to Cart',
            ),
          );
        },
      ),
    );
  }
}
