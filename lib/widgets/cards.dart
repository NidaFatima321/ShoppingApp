import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String text;
  final int count;
  final Color colors;

  const Cards({super.key, required this.text, required this.count, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(color: Colors.white, border: Border.all(color: colors),borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(color: Colors.blue),
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Container(
                padding: EdgeInsets.all(5.0),
                  color: Colors.blue,
                  child:
                      Text('$count', style: TextStyle(color: Colors.white)))),
        ],
      ),
    );
  }
}
