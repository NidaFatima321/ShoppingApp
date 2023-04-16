import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/models/courierShipment.dart';

class DialogBox extends StatelessWidget {
  // final String consigneeName;
  // final String consigneePhone;
  // final String consigneeAdd;
  // final String pieces;
  // final String weight;
  // final String origin;
  // final String destination;
  // final String recieverName;
  // final String delAdd;
  // final String reason;
  // final String codAmount;
  final Shipment courierData;

  const DialogBox({
    super.key,
    required this.courierData,
    // required this.consigneeName,
    // required this.consigneePhone,
    // required this.consigneeAdd,
    // required this.pieces,
    // required this.weight,
    // required this.origin,
    // required this.destination,
    // required this.recieverName,
    // required this.delAdd,
    // required this.reason,
    // required this.codAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 355,
              color: Colors.amber,
              child: Text(
                "SHIPMENT DETAILS",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "CONSIGNEE NAME",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(courierData.consignmentName ?? "-"),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "CONSIGNEE PHONE",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(courierData.consignmentPhone ?? "-"),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "CONSIGNEE ADDRESS",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(courierData.consignmentAddress ?? "-"),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "PIECES",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('${courierData.pcs}')
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "WEIGHT (GRAMS)",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('${courierData.weight}')
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "ORIGIN",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('${courierData.arvlOrigin}')
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "DESTINATION",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('${courierData.arvlDest}')
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "RECEIVER NAME",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text("-"),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "DELIVERY ADDRESS",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text("-"),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "REASON",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text("-"),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "COD AMOUNT",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text('${courierData.arvLTime}')
          ],
        ),
      ),
    );
  }
}
