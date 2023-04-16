import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/shoppingApp/listViewWidget.dart';
import 'package:get/get.dart';

import '../controllers/shoppingController.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  ShoppingController usersController = Get.find<ShoppingController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
        centerTitle: true,
      ),
      // body: Text("Hello"),
      body: Column(

        children: [
          Expanded
          (
            child: ListView.builder(
              itemCount: usersController.cartItems.length,
              itemBuilder: (context, index) {
              return ListViewWidget(product: usersController.cartItems[index],
              func: (){
                usersController.total= usersController.total-usersController.cartItems[index].price;
                usersController.cartItems.remove(usersController.cartItems[index]);
              setState(() {
                
              });},
              text: "Remove From Cart",);
            },),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          Text("CART SUBTOTAL",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
          Text('${usersController.total}')
          ],)
        ],
      ),
      
    );
  }
}
