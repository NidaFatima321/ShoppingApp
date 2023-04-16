import 'package:flutter/material.dart';

class DashboardItem extends StatelessWidget {
  final String title;
  final int count;
  final double width;
  final Color color;
  final double height;
  const DashboardItem(
      {super.key,
      required this.title,
      required this.count,
      required this.width,
      required this.color,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: color, fontWeight: FontWeight.bold, fontSize: 15.0),
          ),
          SizedBox(height: 5.0),
          Text('$count', style: TextStyle(fontSize: 18.0))
        ],
      ),
    );
  }
}
