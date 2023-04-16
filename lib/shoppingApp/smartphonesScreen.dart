import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/shoppingApp/listViewWidget.dart';
import 'package:get/get.dart';

import '../controllers/shoppingController.dart';

class Smartphones extends StatefulWidget {
  const Smartphones({super.key});

  @override
  State<Smartphones> createState() => _SmartphonesState();

}

class _SmartphonesState extends State<Smartphones> {
  ShoppingController usersController = Get.find<ShoppingController>();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    usersController.getData();  
    }

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: ListView.builder(
        shrinkWrap: true,
        itemCount: usersController.shoppingList1.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            child: ListViewWidget(
              product: usersController.shoppingList1[index],
              func: () {
                usersController.cartItems
                    .add(usersController.shoppingList1[index]);
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
