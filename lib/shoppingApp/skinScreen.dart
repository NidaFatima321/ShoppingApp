import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/shoppingApp/listViewWidget.dart';
import 'package:get/get.dart';

import '../controllers/shoppingController.dart';

class SkinCare extends StatefulWidget {
  const SkinCare({super.key});

  @override
  State<SkinCare> createState() => _SkinCareState();

}

class _SkinCareState extends State<SkinCare> {
  ShoppingController usersController = Get.find<ShoppingController>();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    usersController.getSkinc();  
    }

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: ListView.builder(
        shrinkWrap: true,
        itemCount: usersController.shoppingList5.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            child: ListViewWidget(
              product: usersController.shoppingList5[index],
              func: () {
                usersController.cartItems
                    .add(usersController.shoppingList5[index]);
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
