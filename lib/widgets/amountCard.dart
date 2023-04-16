import 'package:flutter/material.dart';

class AmountCard extends StatelessWidget {
  final String title;
  final int amount;
  const AmountCard({Key? key, required this.title, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 9, 10, 0),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        border: Border.all(color: Colors.grey),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title), Text('$amount Rs',style: TextStyle(
            fontWeight: FontWeight.bold
        ),)],
      ),
    );
  }
}
