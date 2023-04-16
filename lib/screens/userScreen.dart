import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/services/user_service.dart';

import '../models/users.dart';
import '../widgets/details.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  UserService userService = UserService();
  List<Users> usersData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Other Players", style: TextStyle(color: Colors.white)),
                Icon(Icons.copy)
              ]),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
              color: Color.fromARGB(255, 155, 209, 156),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 2.0),
                  ),
                  SizedBox(width: 30.0),
                  Text(
                    "Nearby",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 2.0),
                  ),
                  SizedBox(width: 30.0),
                  Text(
                    "Friends",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 2.0),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  Users dataUsers = usersData[index];
                  return Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => Details(
                                  username: dataUsers.username,
                                  email: dataUsers.email,
                                  website: dataUsers.website,
                                  phone: dataUsers.phone,
                                  street: dataUsers.address.street,
                                  city: dataUsers.address.city,
                                ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.circle_notifications),
                              SizedBox(
                                width: 50.0,
                              ),
                              CircleAvatar(
                                radius: 40.0,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage("lep.png"),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    dataUsers.name,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(dataUsers.address.city,
                                      style: TextStyle(color: Colors.grey))
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                dataUsers.company.name,
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                color: Colors.green[100],
                                child: Icon(
                                  Icons.map,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: usersData.length,
              ),
            )
          ],
        ));
  }

  void getData() async {
    usersData = await userService.getServices();
    setState(() {});
  }
}
