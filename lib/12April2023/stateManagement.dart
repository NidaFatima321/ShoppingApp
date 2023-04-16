// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter_application_1/12April2023/randomService.dart';
// import 'package:get/get.dart';

// import '../controllers/usersController.dart';
// import '../models/randomModel.dart';
// import '../widgets/user.dart';

// class StateManagement extends StatefulWidget {
//   const StateManagement({super.key});

//   @override
//   State<StateManagement> createState() => _StateManagementState();
// }

// class _StateManagementState extends State<StateManagement> {
//   UsersController usersController =
//       Get.put(UsersController()); //object of controller
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     usersController.getData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Obx(() {
//         return usersController.loading.value
//             ? Center(child: CircularProgressIndicator())
//             : Column(
//                 children: [
//                   Image.network(
//                       "https://img.freepik.com/free-photo/purple-osteospermum-daisy-flower_1373-16.jpg?w=2000"),
//                   Expanded(
//                     child: ListView.builder(
//                         itemCount: usersController.usersList.length,
//                         itemBuilder: (context, index) {
//                           return UserWidget(
//                             result: usersController.usersList[index],
//                             onRemove: () {
//                               usersController.usersList.removeAt(index);
//                               setState(() {});
//                             },
//                           );
//                         }),
//                   ),
//                 ],
//               );
//       }),
//     );
//   }
// }
