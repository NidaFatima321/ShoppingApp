import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/models/courierShipment.dart';
import 'package:flutter_application_1/widgets/details.dart';
import 'package:flutter_application_1/widgets/dialogBox.dart';

class ListViewItems extends StatelessWidget {
  final String nic;
  final String category;
  final int count;
  final Shipment data;

  final Function() onDeliver;
  final Function() onUnDeliver;

  const ListViewItems({
    Key? key,
    required this.nic,
    required this.category,
    required this.count,
    required this.onDeliver,
    required this.onUnDeliver,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(left: BorderSide(color: Colors.blue, width: 2.0))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    nic,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 50.0),
                  Text(
                    category,
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              Text('$count')
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('-'),
              Row(
                children: [
                  Icon(Icons.phone),
                  Icon(Icons.location_city),
                  GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => DialogBox(courierData: data));
                      },
                      child: Icon(Icons.info))
                ],
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.location_history_rounded),
              ElevatedButton(onPressed: onDeliver, child: Text("Delivered")),
              ElevatedButton(
                  onPressed: onUnDeliver, child: Text("UnDelivered")),
              Icon(Icons.play_circle_fill_outlined)
            ],
          )
        ],
      ),
    );
  }
}
