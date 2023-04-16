// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// // import 'package:flutter_application_1/controllers/usersController.dart';
// import 'package:get/get.dart';

// import '../models/randomModel.dart';

// class UserWidget extends StatefulWidget {
//   final Result result;
//   final Function() onRemove;
//   const UserWidget({super.key, required this.result, required this.onRemove});

//   @override
//   State<UserWidget> createState() => _UserWidgetState();
// }

// class _UserWidgetState extends State<UserWidget> {
//   String? description;
//   String? values;
//   int index = 0;

//   @override
//   Widget build(BuildContext context) {
//     return GetX<UsersController>(builder: (controller) {
//       controller.loading.value;
//       return Column(children: [
//         CircleAvatar(
//             radius: 70,
//             backgroundImage: NetworkImage(widget.result.picture.large)),
//         Text(
//           description ?? "Hi, My Name is",
//           style: TextStyle(color: Colors.grey, fontSize: 15),
//         ),
//         Text(
//           // '${data.results[index].name.first} ${data.results[index].name.last}',
//           values ?? '${widget.result.name.first} ${widget.result.name.last}',
//           style: TextStyle(fontSize: 20),
//         ),
//         SizedBox(
//           height: 20.0,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             GestureDetector(
//               onTap: () {
//                 description = 'My Name is ';
//                 values =
//                     '${widget.result.name.first} ${widget.result.name.last}';
//                 index = 0;
//                 setState(() {});
//               },
//               child: Icon(
//                 Icons.details,
//                 size: 30,
//                 color: index == 0 ? Colors.green : Colors.black,
//               ),
//             ),
//             GestureDetector(
//                 onTap: () {
//                   description = 'My Email is ';
//                   values = widget.result.email;
//                   index = 1;
//                   setState(() {});
//                 },
//                 child: Icon(
//                   Icons.email,
//                   color: index == 1 ? Colors.green : Colors.black,
//                 )),
//             GestureDetector(
//               onTap: () {
//                 description = 'My Birthday is ';
//                 values = '${widget.result.dob.date}';
//                 index = 2;
//                 setState(() {});
//               },
//               child: Icon(
//                 Icons.cake,
//                 size: 30,
//                 color: index == 2 ? Colors.green : Colors.black,
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 description = 'My City is ';

//                 values =
//                     '${widget.result.location.postcode} ${widget.result.location.state} ${widget.result.location.country}';
//                 index = 3;
//                 setState(() {});
//               },
//               child: Icon(
//                 Icons.location_city,
//                 size: 30,
//                 color: index == 3 ? Colors.green : Colors.black,
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 description = 'My Phone number is ';
//                 values = widget.result.phone;
//                 index = 4;
//                 setState(() {});
//               },
//               child: Icon(
//                 Icons.phone,
//                 size: 30,
//                 color: index == 4 ? Colors.green : Colors.black,
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 description = 'My Password is ';
//                 index = 5;
//                 values = widget.result.login.password;
//                 setState(() {});
//               },
//               child: Icon(
//                 Icons.password,
//                 size: 30,
//                 color: index == 5 ? Colors.green : Colors.black,
//               ),
//             ),
//             GestureDetector(
//                 // onTap: widget.onRemove,
//                 onTap: () {
//                   controller.usersList
//                       .removeWhere((element) => element == widget.result);
//                 },
//                 child: Icon(
//                   Icons.delete,
//                   size: 30,
//                   color: index == 6 ? Colors.green : Colors.black,
//                 ))
//           ],
//         ),
//         SizedBox(
//           height: 20.0,
//         ),
//       ]);
//     });
//   }
// }
