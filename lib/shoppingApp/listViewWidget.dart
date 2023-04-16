import 'package:flutter/material.dart';
import 'package:flutter_application_1/shoppingApp/imageDialog.dart';
import 'package:get/get.dart';

import '../controllers/shoppingController.dart';
import '../models/shoppingModel.dart';

class ListViewWidget extends StatefulWidget {
  final Product product;
  final String text;
  final Function() func;
  const ListViewWidget({super.key, required this.product, required this.func, required this.text});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  ShoppingController usersController = Get.find<ShoppingController>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showDialog(context: context, builder: (context) => ImageDialog(product: widget.product),);
      },
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(5),
        color: Colors.white,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              flex: 2,
              child: Image.network(
                widget.product.thumbnail,
                // width: 80,
                // height: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 7),
            Flexible(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 250,child: Text(widget.product.description)),
                  Row(
                    children: [
                      Text(
                        '\$ ${widget.product.price}',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        '${widget.product.discountPercentage} %',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.red,
                            fontFamily: "Times New Roman"),
                      )
                    ],
                  ),
                  Text(widget.product.brand),
                  ElevatedButton.icon(
                    onPressed: widget.func,
                      // onPressed: () {
                      //   usersController.cartItems.add(widget.product);
                      // },
                      icon: Icon(Icons.shop),
                      label: Text(widget.text))
                ],
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
