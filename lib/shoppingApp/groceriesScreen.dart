import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/shoppingApp/listViewWidget.dart';
import 'package:get/get.dart';

import '../controllers/shoppingController.dart';

class Groceries extends StatefulWidget {
  const Groceries({super.key});

  @override
  State<Groceries> createState() => _GroceriesState();

}

class _GroceriesState extends State<Groceries> {
  ShoppingController usersController = Get.find<ShoppingController>();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    usersController.getGroc();  
    }

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: ListView.builder(
        shrinkWrap: true,
        itemCount: usersController.shoppingList3.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            child: ListViewWidget(
              product: usersController.shoppingList3[index],
              func: () {
                usersController.cartItems
                    .add(usersController.shoppingList3[index]);
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
