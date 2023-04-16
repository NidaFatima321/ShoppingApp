import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/models/courierShipment.dart';

import 'package:flutter_application_1/widgets/cards.dart';
import 'package:flutter_application_1/widgets/listViewItems.dart';

import 'delivered.dart';
import 'inprocess.dart';
import 'undelivered.dart';

class NewComp extends StatelessWidget {
  final CourierShipment courierShipment;
  PageController pageController = PageController();

  NewComp({super.key, required this.courierShipment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "TASKS",
              style: TextStyle(color: Colors.black),
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("RE ROUTE"),
                ))
          ],
        ),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        pageController.animateToPage(0,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease);
                      },
                      child: Cards(
                          text: "IN PROCESS",
                          count: courierShipment.data.length,
                          colors: Colors.blue)),
                  GestureDetector(
                    onTap: () {
                      pageController.animateToPage(1,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease);
                    },
                    child: Cards(
                      text: "DELIVERED",
                      count: delivered.length,
                      colors: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      pageController.animateToPage(2,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease);
                    },
                    child: Cards(
                      text: "UNDELIVERED",
                      count: undelivered.length,
                      colors: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 7.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Search Here (Enter CN Number)",
                        filled: true,
                        fillColor: Colors.white),
                  ),
                )),
                Icon(
                  Icons.cancel,
                  size: 40,
                  color: Colors.blue,
                )
              ],
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                children: [
                  InProcess(
                    courierShipment: courierShipment,
                  ),
                  Delivered(data: courierShipment),
                  Undelivered(
                    data: courierShipment.data[0],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.amber[300],
              child: Text(
                "Version 1.0 - Live",
                textAlign: TextAlign.center,
              ),
              width: constraints.maxWidth,
            )
          ],
        );
      }),
    );
  }
}
