import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/main.dart';

import '../models/courierShipment.dart';
import '../widgets/listViewItems.dart';

class Undelivered extends StatefulWidget {
  final Shipment data;
  const Undelivered({super.key, required this.data});

  @override
  State<Undelivered> createState() => _UndeliveredState();
}

class _UndeliveredState extends State<Undelivered> {
  List<Shipment> und = undelivered;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: und.length,
        itemBuilder: (context, index) {
          return ListViewItems(
            category: und[index].product.name,
            count: index,
            nic: '${und[index].cNNumber}',
            onDeliver: () {},
            onUnDeliver: () {},
            data: widget.data,
          );
        },
      ),
    );
  }
}
