// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
// import 'package:vihaan_hack/Community.dart';
// import 'package:vihaan_hack/profile.dart';
// import 'package:vihaan_hack/screens/assesment.dart';
// import 'package:vihaan_hack/screens/callPage.dart';
// import 'package:vihaan_hack/screens/helpline.dart';
// import 'package:vihaan_hack/screens/instruction.dart';
// import 'package:vihaan_hack/screens/videocall.dart';

// class callHome extends StatefulWidget {
//   @override
//   State<callHome> createState() => _callHomeState();
// }

// class _callHomeState extends State<callHome> {
//   final callIDController = TextEditingController();

//   @override
//   void initState() {
//     // TODO: implement initState
//     // getcredentials();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             TextFormField(
//               decoration: InputDecoration(
//                   labelText: "Card ID", hintText: "Enter Call Id"),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   Navigator.of(context).push(MaterialPageRoute(
//                       builder: (context) =>
//                           CallPage(callID: callIDController.text)));
//                 },
//                 child: Text("Join"))
//           ],
//         ),
//       ),
//     );
//   }
// }
