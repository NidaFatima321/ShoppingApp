import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/main.dart';

import '../models/courierShipment.dart';
import '../services/courier_service.dart';
import '../widgets/dialogScreen.dart';
import '../widgets/listViewItems.dart';

class InProcess extends StatefulWidget {
  final CourierShipment courierShipment;
  const InProcess({super.key, required this.courierShipment});

  @override
  State<InProcess> createState() => _InProcessState();
}

class _InProcessState extends State<InProcess> {
  // CourierService courierService = CourierService();
  // late CourierShipment data;
  bool dataLoaded = false;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getCourierData();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: 10,
      itemBuilder: (context, index) {
        CourierShipment courierData = widget.courierShipment;
        return GestureDetector(
          onTap: () {
            // showDialog(
            //   context: context,
            //   builder: (context) => DialogScreen(),
            // );
          },
          child: ListViewItems(
            category: courierData.data[index].product.name,
            count: index,
            nic: courierData.data[index].cNNumber ?? "N/A",
            onDeliver: () {
              delivered.add(courierData.data[index]);
              courierData.data.removeAt(index);
              setState(() {});
            },
            onUnDeliver: () {
              undelivered.add(courierData.data[index]);
              courierData.data.removeAt(index);
              setState(() {});
            },
            data: courierData.data[index],
          ),
        );
      },
    ));
  }

  // void getCourierData() async {
  //   data = await courierService.getCourier();
  //   dataLoaded = true;
  //   setState(() {});
  // }
}
