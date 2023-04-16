import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/models/courierShipment.dart';
import 'package:flutter_application_1/screens/dashboard.dart';
import 'package:flutter_application_1/screens/newComp.dart';

class MainScreen extends StatefulWidget {
  final CourierShipment courierShipment;
  const MainScreen({super.key, required this.courierShipment});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          Dashboard(
            courierShipment: widget.courierShipment,
          ),
          NewComp(
            courierShipment: widget.courierShipment,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 1) {
            pageController.animateToPage(value,
                duration: Duration(milliseconds: 500), curve: Curves.ease);
          }
          if (value == 0) {
            pageController.animateToPage(value,
                duration: Duration(milliseconds: 500), curve: Curves.ease);
          }
        },
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.scanner),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sync),
            label: 'Sync',
          ),
        ],
      ),
    );
  }
}
