import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/shoppingApp/listViewWidget.dart';
import 'package:get/get.dart';

import '../controllers/shoppingController.dart';

class Fragrences extends StatefulWidget {
  const Fragrences({super.key});

  @override
  State<Fragrences> createState() => _FragrencesState();

}

class _FragrencesState extends State<Fragrences> {
  ShoppingController usersController = Get.find<ShoppingController>();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    usersController.getFragr();  
    }

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: ListView.builder(
        shrinkWrap: true,
        itemCount: usersController.shoppingList4.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            child: ListViewWidget(
              product: usersController.shoppingList4[index],
              func: () {
                usersController.cartItems
                    .add(usersController.shoppingList4[index]);
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
