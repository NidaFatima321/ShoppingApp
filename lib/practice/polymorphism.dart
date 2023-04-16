import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Polymorphism extends StatefulWidget {
  const Polymorphism({super.key});

  @override
  State<Polymorphism> createState() => _PolymorphismState();
}

class _PolymorphismState extends State<Polymorphism> {
  //dart does not support method overloading
  //required/positional parameters, always in order
  //v3 is optional or named parameter, v3 wont be asked for at calling so can be null

  dynamic add(int v1, int v2, {double? v3}) {
    if (v3 != null) {
      return v1 + v2 + v3;
    } else {
      return v1 + v2;
    }
  }

  void Function2() {
    print(add(1, 2));
  }

  @override
  Widget build(BuildContext context) {
    Function2();
    return Scaffold();
    // Function2(); // dead code, no code runs after return statement
  }
}
