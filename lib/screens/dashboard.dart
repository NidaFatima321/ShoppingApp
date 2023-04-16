import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/models/courierShipment.dart';
import 'package:flutter_application_1/screens/newComp.dart';
import 'package:flutter_application_1/widgets/dashboardItem.dart';
import 'package:flutter_application_1/widgets/amountCard.dart';

class Dashboard extends StatefulWidget {
  final CourierShipment courierShipment;
  const Dashboard({super.key, required this.courierShipment});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Container(
              color: Colors.orange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(6.0, 0, 0, 0),
                    child: Text(
                      "Home",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 3.0, 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Shahbaz Raza"),
                            Text('00592-Branch office Karachi')
                          ],
                        ),
                      ),
                      Image.asset('assets/lep.png', width: 50.0),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 1.0),
              color: Colors.amber[200],
              height: 10.0,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 0),
                          child: Text("Mon, 3 Apr 2023")),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
                        child: Text(
                          "02:46:24 pm",
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DashboardItem(
                          title: 'TOTAL ASSIGNED',
                          count: widget.courierShipment.data.length,
                          width: constraints.maxWidth * 0.46,
                          color: Colors.black,
                          height: constraints.maxHeight * 0.19),
                      DashboardItem(
                          title: 'IN PROCESS',
                          count: widget.courierShipment.data.length,
                          // count: 104,
                          width: constraints.maxWidth * 0.46,
                          color: Colors.blue,
                          height: constraints.maxHeight * 0.19),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DashboardItem(
                        title: 'UNDELIVERED \n (Returned)',
                        count: 104,
                        width: constraints.maxWidth * 0.46,
                        color: Colors.red,
                        height: constraints.maxHeight * 0.19,
                      ),
                      DashboardItem(
                          title: 'DELIVERED',
                          count: 0,
                          width: constraints.maxWidth * 0.46,
                          color: Colors.green,
                          height: constraints.maxHeight * 0.19),
                    ],
                  )
                ],
              ),
            ),
            AmountCard(title: 'AMOUNT TOTAL', amount: 0),
            AmountCard(title: 'AMOUNT COLLECTED', amount: 0),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NewComp(
                        courierShipment: widget.courierShipment,
                      ),
                    ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_circle_up,
                            size: 40.0,
                          ),
                          Text("View Activity"),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 40.0,
                      )
                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[50],
                ),
                onPressed: () {},
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.arrow_circle_right,
                        size: 50.0,
                        color: Colors.red,
                      ),
                      Text(
                        "SHIFT END",
                        style: TextStyle(color: Colors.black),
                      )
                    ]),
              ),
            ),
            Container(
              color: Colors.amber[200],
              child: Text(
                "Version 1.0.14 LIVE",
                textAlign: TextAlign.center,
              ),
            )
          ]),
        );
      }),
    );
  }
}
