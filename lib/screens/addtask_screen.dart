// import 'package:flutter/material.dart';
//
// class BottomSheet extends StatelessWidget {
//   BottomSheet({this.addTaskCallBack});
//   final Function addTaskCallBack;
//
//   @override
//   Widget build(BuildContext context) {
//     String title;
//
//     return Container(
//       padding:
//           EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//       color: Color(0xFF757575),
//       child: Container(
//         padding: EdgeInsets.only(top: 20, left: 50, right: 50, bottom: 20),
//         height: 400,
//         child: Padding(
//           padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Text(
//                 'ADD TASK',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     color: Colors.lightBlueAccent,
//                     fontSize: 30,
//                     fontWeight: FontWeight.w500),
//               ),
//               TextField(
//                   controller: TextEditingController(),
//                   onChanged: (val) {
//                     title = val;
//                   },
//                   autofocus: true,
//                   textAlign: TextAlign.center,
//                   decoration: InputDecoration(
//                     focusColor: Colors.lightBlueAccent,
//                     hoverColor: Colors.lightBlueAccent,
//                   )),
//               FlatButton(
//                   onPressed: addTaskCallBack(title),
//                   child: Container(
//                     color: Colors.lightBlueAccent,
//                     child: Center(
//                       child: Text(
//                         'Add',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 30),
//                       ),
//                     ),
//                   ))
//             ],
//           ),
//         ),
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(30), topRight: Radius.circular(30))),
//       ),
//     );
//   }
// }
