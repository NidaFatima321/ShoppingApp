import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

import '../controllers/shoppingController.dart';
import '../models/shoppingModel.dart';

class ImageDialog extends StatefulWidget {
  final Product product;
  const ImageDialog({super.key, required this.product});

  @override
  State<ImageDialog> createState() => _ImageDialogState();
}

class _ImageDialogState extends State<ImageDialog> {
  ShoppingController usersController = Get.find<ShoppingController>();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.maxFinite,
        height:500.0,
        color: Colors.white,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('${widget.product.id}',style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 300.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
            items: [
              for(int i=0;i<widget.product.images.length;i++) Container( margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image:
                        NetworkImage(widget.product.images[i]),
                    fit: BoxFit.cover,
                  ),
                ),),
              // Container(
              //   margin: EdgeInsets.all(6.0),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8.0),
              //     image: DecorationImage(
              //       image:
              //           NetworkImage(widget.product.images[0]),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.all(6.0),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8.0),
              //     image: DecorationImage(
              //       image:
              //           NetworkImage(widget.product.images[1]),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.all(6.0),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8.0),
              //     image: DecorationImage(
              //       image:
              //           NetworkImage(widget.product.images[2]),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.all(6.0),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8.0),
              //     image: DecorationImage(
              //       image:
              //           NetworkImage(widget.product.images[3]),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
             
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(widget.product.description,style: TextStyle(fontSize: 18),textAlign: TextAlign.justify,),
          ),
          Text(widget.product.title,style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold,fontSize: 20),)
        ]
        ),
      ),
    );
  }
}
