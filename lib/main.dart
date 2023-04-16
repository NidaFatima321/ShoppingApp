import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/dashboard.dart';
import 'package:flutter_application_1/screens/newComp.dart';
import 'package:flutter_application_1/screens/userScreen.dart';

import '12April2023/stateManagement.dart';
import 'models/courierShipment.dart';
import 'practice/polymorphism.dart';
import 'screens/home.dart';
import 'screens/postsScreen.dart';
import 'shoppingApp/homeScreen.dart';

void main() => runApp(MaterialApp(
      home: ShoppingScreen(),
    ));

List<Shipment> delivered = [];
List<Shipment> undelivered = [];
