import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Details extends StatelessWidget {
  final String username;
  final String email;
  final String website;
  final String phone;
  final String street;
  final String city;

  const Details(
      {super.key,
      required this.username,
      required this.email,
      required this.website,
      required this.phone,
      required this.street,
      required this.city});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          color: Colors.white,
          child: Stack(
            children: [
              Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100.0,
                      width: double.maxFinite,
                      color: Colors.green,
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Username"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              username,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            // color: Colors.grey,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                          ),
                          Text("Email"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              email,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            // color: Colors.grey,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                          ),
                          Text("Phone"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              phone,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            // color: Colors.grey,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                          ),
                          Text("Website"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              website,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            // color: Colors.grey,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                          ),
                          Text("Address"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '$street - $city',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                    SizedBox(height: 30.0),
                    Container(
                      width: 500.0,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Edit Profile"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.black),
                      ),
                    )
                  ]),
              Positioned(
                right: 0,
                left: 0,
                top: 50,
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage("lep.png"),
                  backgroundColor: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
