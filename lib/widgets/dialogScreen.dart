import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      child: Center(
          child: Container(
              height: 50.0,
              color: Colors.white,
              child: Column(children: [
                Text(
                  "Hello World",
                  style: TextStyle(color: Colors.black),
                ),
              ]))),
    );
  }
}
