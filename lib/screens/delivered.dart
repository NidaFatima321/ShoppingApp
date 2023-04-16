import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/main.dart';

import '../models/courierShipment.dart';
import '../widgets/listViewItems.dart';

class Delivered extends StatefulWidget {
  final CourierShipment data;
  const Delivered({super.key, required this.data});

  @override
  State<Delivered> createState() => _DeliveredState();
}

class _DeliveredState extends State<Delivered> {
  List<Shipment> del = delivered;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: delivered.length,
        itemBuilder: (context, index) {
          return ListViewItems(
            category: del[index].product.name,
            count: index,
            nic: '${del[index].cNNumber}',
            onDeliver: () {},
            onUnDeliver: () {},
            data: widget.data.data[0],
          );
        },
      ),
    );
  }
}
