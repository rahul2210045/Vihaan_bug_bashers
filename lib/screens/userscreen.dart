// // import 'dart:async';
// // import 'dart:convert';

// // // import 'package:caress/Assessment.dart';
// // // import 'package:caress/Helpline.dart';
// // // import 'package:caress/Prediction.dart';
// // // import 'package:caress/main.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// // import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// // import 'package:health/health.dart';
// // // import 'package:health/health.dart';
// // import 'package:http/http.dart' as http;
// // import 'package:usage_stats/usage_stats.dart';
// // import 'package:vihaan_hack/screens/assesment.dart';
// // import 'package:vihaan_hack/screens/helpline.dart';
// // import 'package:vihaan_hack/screens/instruction.dart';
// // import 'package:vihaan_hack/screens/prediction.dart';
// // // import 'package:vihaan/Instruction.dart';
// // // import 'package:vihaan/assesment.dart';
// // // import 'package:vihaan/helpline.dart';
// // // import 'package:vihaan/prediction.dart';
// // // import 'package:usage_stats/usage_stats.dart';

// // // import 'Instruction.dart';

// // const AndroidNotificationChannel channel = AndroidNotificationChannel(
// //     'high importance channel', 'High Importance Notifications',
// //     description: 'This Channel is used for important notifications',
// //     importance: Importance.high,
// //     playSound: true);

// // final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
// //     FlutterLocalNotificationsPlugin();

// // class UserData extends StatefulWidget {
// //   const UserData({Key? key}) : super(key: key);

// //   @override
// //   State<UserData> createState() => _UserDataState();
// // }

// // bool run = true;
// // int? _steps = 0;
// // int? stepx = 0;
// // String? _heart_rate;
// // HealthValue? _bp_d;
// // HealthValue? _bp_s;
// // HealthValue? _oxygen;
// // HealthValue? _bodytemp;
// // int c = 0;
// // late final HealthValue temp=7 as HealthValue;

// // class _UserDataState extends State<UserData> {
// //   List<EventUsageInfo> events = [];
// //   Map<String?, NetworkInfo?> _netInfoMap = Map();

// //   bool notify = false;

// //   // Future func() async {
// //   //   HealthFactory health = HealthFactory();


// //   //   // define the types to get
// //   //   var types = [
// //   //     HealthDataType.STEPS,
// //   //     HealthDataType.HEART_RATE,
// //   //     HealthDataType.BLOOD_GLUCOSE,
// //   //     HealthDataType.BLOOD_PRESSURE_DIASTOLIC,
// //   //     HealthDataType.BLOOD_PRESSURE_SYSTOLIC,
// //   //     HealthDataType.BLOOD_OXYGEN,
// //   //     HealthDataType.BODY_TEMPERATURE
// //   //   ];

// //   //   await Permission.activityRecognition.request();

// //   //   // requesting access to the data types before reading them
// //   //   bool requested = await health.requestAuthorization(types);

// //   //   var now = DateTime.now();
// //   //   // fetch health data from the last 24 hours
// //   //   // List<HealthDataPoint> healthData = await health.getHealthDataFromTypes(
// //   //   //     now.subtract(Duration(days: 1)), now, types);

// //   //   // get the number of steps for today
// //   //   var midnight = DateTime(now.year, now.month, now.day);
// //   //   var xyz = DateTime(now.year, now.month, now.day, now.hour, now.minute - 10);
// //   //   _steps = await health.getTotalStepsInInterval(midnight, now);
// //   //   stepx = await health.getTotalStepsInInterval(xyz, now);
// //   //   if (stepx == null) {
// //   //     stepx = 0;
// //   //   }

// //   //   String? heartRate;
// //   //   HealthValue? bpd;
// //   //   HealthValue? bps;
// //   //   HealthValue? oxygen;
// //   //   HealthValue? bodytemp;
// //   //   for (final data in healthData) {
// //   //     if (data.type == HealthDataType.HEART_RATE) {
// //   //       if (data.value != null) {
// //   //         heartRate = "${data.value}";
// //   //       }
// //   //     }
// //   //     if (data.type == HealthDataType.BLOOD_PRESSURE_DIASTOLIC) {
// //   //       if (data.value != null) {
// //   //         bpd = data.value;
// //   //       }
// //   //     }
// //   //     if (data.type == HealthDataType.BLOOD_PRESSURE_SYSTOLIC) {
// //   //       if (data.value != null) {
// //   //         bps = data.value;
// //   //       }
// //   //     }
// //   //     if (data.type == HealthDataType.BLOOD_OXYGEN) {
// //   //       if (data.value != null) {
// //   //         oxygen = data.value;
// //   //       }
// //   //     }
// //   //     if (data.type == HealthDataType.BODY_TEMPERATURE) {
// //   //       if (data.value != null) {
// //   //         bodytemp = data.value;
// //   //       }
// //   //     }
// //   //   }

// //   //   setState(() {
// //   //     _heart_rate = heartRate;
// //   //     _bp_d = bpd;
// //   //     _bp_s = bps;
// //   //     _oxygen = oxygen;
// //   //     _bodytemp = bodytemp;
// //   //   });
// //   // }

// //   Future sendEmail(
// //       String name1, String name2, String message, String email) async {
// //     final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
// //     const serviceId = 'service_vc1tc92';
// //     const templateId = 'template_mak408l';
// //     const userId = 'C7ns8WoNqX9Ns9GvG';
// //     try {
// //       final response = await http.post(url,
// //           headers: {
// //             'origin': 'http:localhost',
// //             'Content-Type': 'application/json'
// //           },
// //           body: json.encode({
// //             'service_id': serviceId,
// //             'template_id': templateId,
// //             'user_id': userId,
// //             'template_params': {
// //               'from_name': name1,
// //               'to_name': name2,
// //               'message': message,
// //               'to_email': email,
// //             }
// //           }));
// //       return response.statusCode;
// //     } catch (e) {
// //       print("feedback email response");
// //     }
// //   }

// //   void notification() async {
// //     await flutterLocalNotificationsPlugin
// //         .resolvePlatformSpecificImplementation<
// //             AndroidFlutterLocalNotificationsPlugin>()
// //         ?.createNotificationChannel(channel);

// //     final AndroidInitializationSettings initializationSettingsAndroid =
// //         AndroidInitializationSettings('@mipmap/ic_launcher');

// //     var x = events[1]
// //         .packageName!
// //         .replaceFirst("com.", "")
// //         .replaceFirst(".android", "");
// //     String statement = (x == 'whatsapp' ||
// //             x == 'instagram' ||
// //             x == 'snapchat' ||
// //             x == 'twitter' ||
// //             x == 'google.youtube')
// //         ? '4. Stop using $x'
// //         : '4. Stop using all the apps now.';

// //     final InitializationSettings initializationSettings =
// //         InitializationSettings(android: initializationSettingsAndroid);

// //     if (int.parse(_heart_rate!.split(".")[0]) > 100) {
// //       flutterLocalNotificationsPlugin.show(
// //         0,
// //         "Alert",
// //         "Your heartbeat is increasing",
// //         NotificationDetails(
// //           android: AndroidNotificationDetails(channel.id, channel.name,
// //               channelDescription: channel.description,
// //               importance: Importance.high,
// //               color: Colors.red,
// //               playSound: true,
// //               icon: '@mipmap/ic_launcher'),
// //         ),
// //         payload: "optional payload",
// //       );
// //     }

// //     await flutterLocalNotificationsPlugin.initialize(initializationSettings,
// //         onDidReceiveNotificationResponse: (NotificationResponse) {
// //       showDialog(
// //         context: context,
// //         builder: (_) => AlertDialog(
// //           title: Text(
// //             'Alert',
// //             style: TextStyle(
// //                 fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
// //           ),
// //           content: SizedBox(
// //             height: 180,
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.center,
// //               children: [
// //                 Text(
// //                   'Anxiety attack detected!!',
// //                   style: TextStyle(fontSize: 15.00, color: Colors.blue),
// //                 ),
// //                 SizedBox(height: 5),
// //                 Text(
// //                   '1. Stop using your phone\n' +
// //                       '2. Take Deep breaths and Relax\n' +
// //                       '3. Take a Juice break\n' +
// //                       statement,
// //                   style: TextStyle(fontSize: 15.00, color: Colors.black),
// //                 ),
// //                 SizedBox(height: 10),
// //               ],
// //             ),
// //           ),
// //           actions: [
// //             TextButton(
// //               child: Text('OK'),
// //               onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
// //             ),
// //             TextButton(
// //               child: Text('Call "p-a-r-e-n-t'),
// //               onPressed: () {
// //                 FlutterPhoneDirectCaller.callNumber("98765432");
// //               },
// //             ),
// //           ],
// //         ),
// //       );
// //     }, onDidReceiveBackgroundNotificationResponse: (NotificationResponse) {
// //       showDialog(
// //         context: context,
// //         builder: (_) => AlertDialog(
// //           title: Text(
// //             'Alert',
// //             style: TextStyle(
// //                 fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
// //           ),
// //           content: SizedBox(
// //             height: 180,
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.center,
// //               children: [
// //                 Text(
// //                   'Anxiety attack detected!!',
// //                   style: TextStyle(fontSize: 15.00, color: Colors.blue),
// //                 ),
// //                 SizedBox(height: 5),
// //                 Text(
// //                   '1. Stop using your phone\n' +
// //                       '2. Take Deep breaths and Relax\n' +
// //                       '3. Take a Juice break\n' +
// //                       statement,
// //                   style: TextStyle(fontSize: 15.00, color: Colors.black),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           actions: [
// //             TextButton(
// //               child: Text('OK'),
// //               onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
// //             ),





// //             TextButton(
// //               child: Text('Call ${"jhgfds"}'),
// //               onPressed: () {
// //                 FlutterPhoneDirectCaller.callNumber("98765432");
// //               },
// //             ),
// //           ],
// //         ),
// //       );
// //     });
// //   }

// //   Future<void> initUsage() async {
// //     UsageStats.grantUsagePermission();
// //     DateTime endDate = new DateTime.now();
// //     DateTime startDate = endDate.subtract(Duration(days: 1));

// //     List<EventUsageInfo> queryEvents =
// //         await UsageStats.queryEvents(startDate, endDate);
// //     List<NetworkInfo> networkInfos =
// //         await UsageStats.queryNetworkUsageStats(startDate, endDate);
// //     Map<String?, NetworkInfo?> netInfoMap = Map.fromIterable(networkInfos,
// //         key: (v) => v.packageName, value: (v) => v);

// //     this.setState(() {
// //       events = queryEvents.reversed.toList();
// //       _netInfoMap = netInfoMap;
// //     });
// //   }

// //   @override
// //   void initState() {
// //     // TODO: implement initState
// //     if (run) {
// //       initUsage();
// //       // func();
// //       setState(() {
// //         run = false;
// //       });
// //     }
// //     Timer.periodic(Duration(minutes: 1), (timer) {
// //       // func();
// //     });
// //     Timer.periodic(Duration(minutes: 1), (timer) {
// //       notification();
// //       if (int.parse(_heart_rate!.split(".")[0]) > 100) {
// //         c = 1;
// //       }
// //     });
// //     Timer.periodic(Duration(hours: 3), (timer) {
// //       if (c == 1) {
// //         sendEmail(
// //           "hello",
// //           "myy",
// //           'Your friend  had an anxiety attack',
// //           '4ty'
// //         );
// //         sendEmail(
// //           "hello",
// //           "myy",
// //           'Your friend  had an anxiety attack',
// //           '4ty'
// //         );
// //         c = 0;
// //       }
// //     });
// //     super.initState();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     var size = MediaQuery.of(context).size;
// //     var height = size.height;
// //     var width = size.width;
// //     return SafeArea(
// //       child: Scaffold(
// //         appBar: AppBar(
// //           title: Text('Caress'),
// //           centerTitle: true,
// //           backgroundColor: Colors.redAccent.withOpacity(0.8),
// //         ),
// //         drawer: Menu(),






















































































































































































// //         body: Container(
// //           child: Center(
// //             child: SingleChildScrollView(
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.center,
// //                 children: [
// //                   Container(
// //                     padding: EdgeInsets.symmetric(
// //                         vertical: height / 40, horizontal: 0.04 * width),
// //                     child: Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                       children: [
// //                         Text(
// //                           'Hey!! ${''}, Welcome to Caress',
// //                           textAlign: TextAlign.center,
// //                           style: TextStyle(
// //                               fontWeight: FontWeight.bold,
// //                               fontStyle: FontStyle.italic,
// //                               color: Colors.blue,
// //                               fontSize: 15),
// //                         ),
// //                         SizedBox()
// //                       ],
// //                     ),
// //                   ),
// //                   Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                     children: [
// //                       DataValue(
// //                         data: "${_heart_rate} BPM",
// //                         dataIcon: FontAwesomeIcons.heartPulse,
// //                         dataName: "Heart rate",
// //                       ),
// //                       DataValue(
// //                         data: "${_bp_s} mm Hg",
// //                         dataIcon: Icons.monitor_heart_outlined,
// //                         dataName: "Systolic BP",
// //                       ),
// //                     ],
// //                   ),
// //                   SizedBox(height: height / 30),
// //                   Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                     children: [
// //                       DataValue(
// //                         data: "${_bp_d} mm Hg",
// //                         dataIcon: Icons.monitor_heart,
// //                         dataName: "Diastolic BP",
// //                       ),
// //                       DataValue(
// //                         data: "${_oxygen} %",
// //                         dataIcon: Icons.bloodtype,
// //                         dataName: "Blood oxygen",
// //                       ),
// //                     ],
// //                   ),
// //                   SizedBox(height: height / 30),
// //                   Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                     children: [
// //                       DataValue(
// //                         data: "${_bodytemp} Centigrade",
// //                         dataIcon: Icons.thermostat,
// //                         dataName: "Temperature",
// //                       ),
// //                       DataValue(
// //                         data: "${_steps}",
// //                         dataIcon: Icons.directions_walk,
// //                         dataName: "Steps (today)",
// //                       ),
// //                     ],
// //                   ),
// //                   SizedBox(height: 30),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class DataValue extends StatelessWidget {
// //   const DataValue(
// //       {required this.data, required this.dataName, required this.dataIcon});

// //   final String data;
// //   final String dataName;
// //   final IconData dataIcon;

// //   @override
// //   Widget build(BuildContext context) {
// //     var size = MediaQuery.of(context).size;
// //     var height = size.height;
// //     var width = size.width;
// //     return Container(
// //       width: width / 2.3,
// //       padding: EdgeInsets.all(15),
// //       decoration: BoxDecoration(
// //           borderRadius: BorderRadius.circular(10),
// //           color: Colors.grey[200]!.withOpacity(0.7)),
// //       child: Column(
// //         children: [
// //           Icon(dataIcon, size: 0.174 * width, color: Colors.pink[600]),
// //           SizedBox(height: height / 40),
// //           Text(
// //             dataName,
// //             style: TextStyle(
// //                 fontSize: 0.036 * width,
// //                 color: Colors.blue,
// //                 fontWeight: FontWeight.bold),
// //           ),
// //           SizedBox(height: height / 40),
// //           Text(data),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class Menu extends StatefulWidget {
// //   const Menu({Key? key}) : super(key: key);

// //   @override
// //   State<Menu> createState() => _MenuState();
// // }

// // class _MenuState extends State<Menu> {
// //   @override
// //   Widget build(BuildContext context) {
// //     var size = MediaQuery.of(context).size;
// //     var height = size.height;
// //     var width = size.width;
// //     Color color = Colors.black;
// //     return Drawer(
// //       backgroundColor: Colors.white,
// //       child: Container(
// //         color: Colors.white,
// //         child: Padding(
// //           padding: EdgeInsets.only(top: 40, left: 20),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             mainAxisAlignment: MainAxisAlignment.start,
// //             children: [
// //               InkWell(
// //                 onTap: () {
// //                   Navigator.pop(context);
// //                 },
// //                 child: Row(
// //                   children: [
// //                     Icon(
// //                       Icons.home,
// //                       color: Colors.black,
// //                       size: 25,
// //                     ),
// //                     SizedBox(width: 10),
// //                     Text(
// //                       'Home',
// //                       textScaleFactor: 1,
// //                       style: TextStyle(fontSize: 25, color: color),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               SizedBox(
// //                 height: 30,
// //               ),
// //               InkWell(
// //                 onTap: () {
// //                   Navigator.pop(context);
// //                   Navigator.push(context,
// //                       MaterialPageRoute(builder: (context) => Assessment()));
// //                       //     Navigator.push(context,
// //                       // MaterialPageRoute(builder: (context) => WelcomeScreen()));
// //                 },
// //                 child: Row(
// //                   children: [
// //                     Icon(
// //                       Icons.health_and_safety,
// //                       color: Colors.black,
// //                       size: 25,
// //                     ),
// //                     SizedBox(width: 10),
// //                     Text(
// //                       'Self Assesment',
// //                       textScaleFactor: 1,
// //                       style: TextStyle(fontSize: 25, color: color),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               SizedBox(
// //                 height: 30,
// //               ),
// //               InkWell(
// //                 child: Row(
// //                   children: [
// //                     Icon(
// //                       Icons.book_outlined,
// //                       color: Colors.black,
// //                       size: 25,
// //                     ),
// //                     SizedBox(width: 10),
// //                     Text(
// //                       'Instructions',
// //                       textScaleFactor: 1,
// //                       style: TextStyle(fontSize: 25, color: color),
// //                     ),
// //                   ],
// //                 ),
// //                 onTap: () {
// //                   Navigator.pop(context);
// //                   Navigator.push(context,
// //                       MaterialPageRoute(builder: (context) => Instruction()));
// //                       //        Navigator.push(context,
// //                       // MaterialPageRoute(builder: (context) => WelcomeScreen()));
// //                 },
// //               ),
// //               SizedBox(
// //                 height: 30,
// //               ),
// //               InkWell(
// //                 child: Row(
// //                   children: [
// //                     Icon(
// //                       Icons.phone,
// //                       color: Colors.black,
// //                       size: 25,
// //                     ),
// //                     SizedBox(width: 10),
// //                     Text(
// //                       'Helpline',
// //                       textScaleFactor: 1,
// //                       style: TextStyle(fontSize: 25, color: color),
// //                     ),
// //                   ],
// //                 ),
// //                 onTap: () {
// //                   Navigator.pop(context);
// //                   Navigator.push(context,
// //                       MaterialPageRoute(builder: (context) => Helpline()));
// //                 },
// //               ),
// //               SizedBox(
// //                 height: 30,
// //               ),
// //               InkWell(
// //                 child: Row(
// //                   children: [
// //                     Icon(
// //                       FontAwesomeIcons.stethoscope,
// //                       color: Colors.black,
// //                       size: 20,
// //                     ),
// //                     SizedBox(width: 15),
// //                     Text(
// //                       'Smart Prediction',
// //                       textScaleFactor: 1,
// //                       style: TextStyle(fontSize: 25, color: color),
// //                     ),
// //                   ],
// //                 ),
// //                 onTap: () {
// //                   Navigator.pop(context);
// //                   Navigator.push(
// //                       context,
// //                       MaterialPageRoute(
// //                           builder: (context) =>
// //                               Prediction(HealthValue(), stepx!)));
// //                 },
// //               ),
// //               SizedBox(height: height / 2),
// //               Text(
// //                 'Copyright©2023 | @Ideavengers',
// //                 textAlign: TextAlign.center,
// //                 textScaleFactor: 1,
// //                 style: TextStyle(fontSize: 15, color: color),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'dart:async';
// import 'dart:convert';

// // import 'package:caress/Assessment.dart';
// // import 'package:caress/Helpline.dart';
// // import 'package:caress/Prediction.dart';
// // import 'package:caress/main.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// // import 'package:health/health.dart';
// // import 'package:health/health.dart';
// import 'package:http/http.dart' as http;
// import 'package:usage_stats/usage_stats.dart';
// // import 'package:vihaan/Instruction.dart';
// // import 'package:vihaan/assesment.dart';
// // import 'package:vihaan/helpline.dart';
// // import 'package:vihaan/prediction.dart';
// import 'package:vihaan_hack/screens/assesment.dart';
// import 'package:vihaan_hack/screens/helpline.dart';
// import 'package:vihaan_hack/screens/instruction.dart';
// import 'package:vihaan_hack/screens/prediction.dart';
// // import 'package:usage_stats/usage_stats.dart';

// // import 'Instruction.dart';

// const AndroidNotificationChannel channel = AndroidNotificationChannel(
//     'high importance channel', 'High Importance Notifications',
//     description: 'This Channel is used for important notifications',
//     importance: Importance.high,
//     playSound: true);

// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();

// class UserData extends StatefulWidget {
//   const UserData({Key? key}) : super(key: key);

//   @override
//   State<UserData> createState() => _UserDataState();
// }

// bool run = true;
// int? _steps = 0;
// int? stepx = 0;
// String? _heart_rate;
// // HealthValue? _bp_d;
// // HealthValue? _bp_s;
// // HealthValue? _oxygen;
// // HealthValue? _bodytemp;
// // int c = 0;
// // late final HealthValue temp=7 as HealthValue;

// class _UserDataState extends State<UserData> {
//   List<EventUsageInfo> events = [];
//   Map<String?, NetworkInfo?> _netInfoMap = Map();

//   bool notify = false;

//   // Future func() async {
//   //   HealthFactory health = HealthFactory();


//   //   // define the types to get
//   //   var types = [
//   //     HealthDataType.STEPS,
//   //     HealthDataType.HEART_RATE,
//   //     HealthDataType.BLOOD_GLUCOSE,
//   //     HealthDataType.BLOOD_PRESSURE_DIASTOLIC,
//   //     HealthDataType.BLOOD_PRESSURE_SYSTOLIC,
//   //     HealthDataType.BLOOD_OXYGEN,
//   //     HealthDataType.BODY_TEMPERATURE
//   //   ];

//   //   await Permission.activityRecognition.request();

//   //   // requesting access to the data types before reading them
//   //   bool requested = await health.requestAuthorization(types);

//   //   var now = DateTime.now();
//   //   // fetch health data from the last 24 hours
//   //   // List<HealthDataPoint> healthData = await health.getHealthDataFromTypes(
//   //   //     now.subtract(Duration(days: 1)), now, types);

//   //   // get the number of steps for today
//   //   var midnight = DateTime(now.year, now.month, now.day);
//   //   var xyz = DateTime(now.year, now.month, now.day, now.hour, now.minute - 10);
//   //   _steps = await health.getTotalStepsInInterval(midnight, now);
//   //   stepx = await health.getTotalStepsInInterval(xyz, now);
//   //   if (stepx == null) {
//   //     stepx = 0;
//   //   }

//   //   String? heartRate;
//   //   HealthValue? bpd;
//   //   HealthValue? bps;
//   //   HealthValue? oxygen;
//   //   HealthValue? bodytemp;
//   //   for (final data in healthData) {
//   //     if (data.type == HealthDataType.HEART_RATE) {
//   //       if (data.value != null) {
//   //         heartRate = "${data.value}";
//   //       }
//   //     }
//   //     if (data.type == HealthDataType.BLOOD_PRESSURE_DIASTOLIC) {
//   //       if (data.value != null) {
//   //         bpd = data.value;
//   //       }
//   //     }
//   //     if (data.type == HealthDataType.BLOOD_PRESSURE_SYSTOLIC) {
//   //       if (data.value != null) {
//   //         bps = data.value;
//   //       }
//   //     }
//   //     if (data.type == HealthDataType.BLOOD_OXYGEN) {
//   //       if (data.value != null) {
//   //         oxygen = data.value;
//   //       }
//   //     }
//   //     if (data.type == HealthDataType.BODY_TEMPERATURE) {
//   //       if (data.value != null) {
//   //         bodytemp = data.value;
//   //       }
//   //     }
//   //   }

//   //   setState(() {
//   //     _heart_rate = heartRate;
//   //     _bp_d = bpd;
//   //     _bp_s = bps;
//   //     _oxygen = oxygen;
//   //     _bodytemp = bodytemp;
//   //   });
//   // }

//   Future sendEmail(
//       String name1, String name2, String message, String email) async {
//     final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
//     const serviceId = 'service_vc1tc92';
//     const templateId = 'template_mak408l';
//     const userId = 'C7ns8WoNqX9Ns9GvG';
//     try {
//       final response = await http.post(url,
//           headers: {
//             'origin': 'http:localhost',
//             'Content-Type': 'application/json'
//           },
//           body: json.encode({
//             'service_id': serviceId,
//             'template_id': templateId,
//             'user_id': userId,
//             'template_params': {
//               'from_name': name1,
//               'to_name': name2,
//               'message': message,
//               'to_email': email,
//             }
//           }));
//       return response.statusCode;
//     } catch (e) {
//       print("feedback email response");
//     }
//   }

//   void notification() async {
//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channel);

//     final AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('@mipmap/ic_launcher');

//     var x = events[1]
//         .packageName!
//         .replaceFirst("com.", "")
//         .replaceFirst(".android", "");
//     String statement = (x == 'whatsapp' ||
//             x == 'instagram' ||
//             x == 'snapchat' ||
//             x == 'twitter' ||
//             x == 'google.youtube')
//         ? '4. Stop using $x'
//         : '4. Stop using all the apps now.';

//     final InitializationSettings initializationSettings =
//         InitializationSettings(android: initializationSettingsAndroid);

//     if (int.parse(_heart_rate!.split(".")[0]) > 100) {
//       flutterLocalNotificationsPlugin.show(
//         0,
//         "Alert",
//         "Your heartbeat is increasing",
//         NotificationDetails(
//           android: AndroidNotificationDetails(channel.id, channel.name,
//               channelDescription: channel.description,
//               importance: Importance.high,
//               color: Colors.red,
//               playSound: true,
//               icon: '@mipmap/ic_launcher'),
//         ),
//         payload: "optional payload",
//       );
//     }

//     await flutterLocalNotificationsPlugin.initialize(initializationSettings,
//         onDidReceiveNotificationResponse: (NotificationResponse) {
//       showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//           title: Text(
//             'Alert',
//             style: TextStyle(
//                 fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
//           ),
//           content: SizedBox(
//             height: 180,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   'Anxiety attack detected!!',
//                   style: TextStyle(fontSize: 15.00, color: Colors.blue),
//                 ),
//                 SizedBox(height: 5),
//                 Text(
//                   '1. Stop using your phone\n' +
//                       '2. Take Deep breaths and Relax\n' +
//                       '3. Take a Juice break\n' +
//                       statement,
//                   style: TextStyle(fontSize: 15.00, color: Colors.black),
//                 ),
//                 SizedBox(height: 10),
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//               child: Text('OK'),
//               onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
//             ),
//             TextButton(
//               child: Text('Call "p-a-r-e-n-t'),
//               onPressed: () {
//                 FlutterPhoneDirectCaller.callNumber("98765432");
//               },
//             ),
//           ],
//         ),
//       );
//     }, onDidReceiveBackgroundNotificationResponse: (NotificationResponse) {
//       showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//           title: Text(
//             'Alert',
//             style: TextStyle(
//                 fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
//           ),
//           content: SizedBox(
//             height: 180,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   'Anxiety attack detected!!',
//                   style: TextStyle(fontSize: 15.00, color: Colors.blue),
//                 ),
//                 SizedBox(height: 5),
//                 Text(
//                   '1. Stop using your phone\n' +
//                       '2. Take Deep breaths and Relax\n' +
//                       '3. Take a Juice break\n' +
//                       statement,
//                   style: TextStyle(fontSize: 15.00, color: Colors.black),
//                 ),
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//               child: Text('OK'),
//               onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
//             ),





//             TextButton(
//               child: Text('Call ${"jhgfds"}'),
//               onPressed: () {
//                 FlutterPhoneDirectCaller.callNumber("98765432");
//               },
//             ),
//           ],
//         ),
//       );
//     });
//   }

//   Future<void> initUsage() async {
//     UsageStats.grantUsagePermission();
//     DateTime endDate = new DateTime.now();
//     DateTime startDate = endDate.subtract(Duration(days: 1));

//     List<EventUsageInfo> queryEvents =
//         await UsageStats.queryEvents(startDate, endDate);
//     List<NetworkInfo> networkInfos =
//         await UsageStats.queryNetworkUsageStats(startDate, endDate);
//     Map<String?, NetworkInfo?> netInfoMap = Map.fromIterable(networkInfos,
//         key: (v) => v.packageName, value: (v) => v);

//     this.setState(() {
//       events = queryEvents.reversed.toList();
//       _netInfoMap = netInfoMap;
//     });
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     if (run) {
//       initUsage();
//       // func();
//       setState(() {
//         run = false;
//       });
//     }
//     Timer.periodic(Duration(minutes: 1), (timer) {
//       // func();
//     });
//     Timer.periodic(Duration(minutes: 1), (timer) {
//       notification();
//       if (int.parse(_heart_rate!.split(".")[0]) > 100) {
//         // c = 1;
//       }
//     });
//     // Timer.periodic(Duration(hours: 3), (timer) {
//     //   if (c == 1) {
//     //     sendEmail(
//     //       "hello",
//     //       "myy",
//     //       'Your friend  had an anxiety attack',
//     //       '4ty'
//     //     );
//     //     sendEmail(
//     //       "hello",
//     //       "myy",
//     //       'Your friend  had an anxiety attack',
//     //       '4ty'
//     //     );
//     //     // c = 0;
//     //   }
//     // });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     var height = size.height;
//     var width = size.width;
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Caress'),
//           centerTitle: true,
//           backgroundColor: Colors.redAccent.withOpacity(0.8),
//         ),
//         drawer: Menu(),
//         body: Container(
//           child: Center(
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     padding: EdgeInsets.symmetric(
//                         vertical: height / 40, horizontal: 0.04 * width),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Hey!! ${''}, Welcome to Caress',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontStyle: FontStyle.italic,
//                               color: Colors.blue,
//                               fontSize: 15),
//                         ),
//                         SizedBox()
//                       ],
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       DataValue(
//                         data: "${_heart_rate} BPM",
//                         dataIcon: FontAwesomeIcons.heartPulse,
//                         dataName: "Heart rate",
//                       ),
//                       DataValue(
//                         data: "${9} mm Hg",
//                         dataIcon: Icons.monitor_heart_outlined,
//                         dataName: "Systolic BP",
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: height / 30),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       DataValue(
//                         data: "${9} mm Hg",
//                         dataIcon: Icons.monitor_heart,
//                         dataName: "Diastolic BP",
//                       ),
//                       DataValue(
//                         data: "${56} %",
//                         dataIcon: Icons.bloodtype,
//                         dataName: "Blood oxygen",
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: height / 30),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       DataValue(
//                         data: "${9} Centigrade",
//                         dataIcon: Icons.thermostat,
//                         dataName: "Temperature",
//                       ),
//                       DataValue(
//                         data: "${_steps}",
//                         dataIcon: Icons.directions_walk,
//                         dataName: "Steps (today)",
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 30),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class DataValue extends StatelessWidget {
//   const DataValue(
//       {required this.data, required this.dataName, required this.dataIcon});

//   final String data;
//   final String dataName;
//   final IconData dataIcon;

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     var height = size.height;
//     var width = size.width;
//     return Container(
//       width: width / 2.3,
//       padding: EdgeInsets.all(15),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Colors.grey[200]!.withOpacity(0.7)),
//       child: Column(
//         children: [
//           Icon(dataIcon, size: 0.174 * width, color: Colors.pink[600]),
//           SizedBox(height: height / 40),
//           Text(
//             dataName,
//             style: TextStyle(
//                 fontSize: 0.036 * width,
//                 color: Colors.blue,
//                 fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: height / 40),
//           Text(data),
//         ],
//       ),
//     );
//   }
// }

// class Menu extends StatefulWidget {
//   const Menu({Key? key}) : super(key: key);

//   @override
//   State<Menu> createState() => _MenuState();
// }

// class _MenuState extends State<Menu> {
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     var height = size.height;
//     var width = size.width;
//     Color color = Colors.black;
//     return Drawer(
//       backgroundColor: Colors.white,
//       child: Container(
//         color: Colors.white,
//         child: Padding(
//           padding: EdgeInsets.only(top: 40, left: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               InkWell(
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.home,
//                       color: Colors.black,
//                       size: 25,
//                     ),
//                     SizedBox(width: 10),
//                     Text(
//                       'Home',
//                       textScaleFactor: 1,
//                       style: TextStyle(fontSize: 25, color: color),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               InkWell(
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Assessment()));
//                       //     Navigator.push(context,
//                       // MaterialPageRoute(builder: (context) => WelcomeScreen()));
//                 },
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.health_and_safety,
//                       color: Colors.black,
//                       size: 25,
//                     ),
//                     SizedBox(width: 10),
//                     Text(
//                       'Self Assesment',
//                       textScaleFactor: 1,
//                       style: TextStyle(fontSize: 25, color: color),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               InkWell(
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.book_outlined,
//                       color: Colors.black,
//                       size: 25,
//                     ),
//                     SizedBox(width: 10),
//                     Text(
//                       'Instructions',
//                       textScaleFactor: 1,
//                       style: TextStyle(fontSize: 25, color: color),
//                     ),
//                   ],
//                 ),
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Instruction()));
//                       //        Navigator.push(context,
//                       // MaterialPageRoute(builder: (context) => WelcomeScreen()));
//                 },
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               InkWell(
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.phone,
//                       color: Colors.black,
//                       size: 25,
//                     ),
//                     SizedBox(width: 10),
//                     Text(
//                       'Helpline',
//                       textScaleFactor: 1,
//                       style: TextStyle(fontSize: 25, color: color),
//                     ),
//                   ],
//                 ),
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Helpline()));
//                 },
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               InkWell(
//                 child: Row(
//                   children: [
//                     Icon(
//                       FontAwesomeIcons.stethoscope,
//                       color: Colors.black,
//                       size: 20,
//                     ),
//                     SizedBox(width: 15),
//                     Text(
//                       'Smart Prediction',
//                       textScaleFactor: 1,
//                       style: TextStyle(fontSize: 25, color: color),
//                     ),
//                   ],
//                 ),
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) =>
//                               Prediction()));
//                 },
//               ),
//               SizedBox(height: height / 2),
//               Text(
//                 'Copyright©2023 | @Ideavengers',
//                 textAlign: TextAlign.center,
//                 textScaleFactor: 1,
//                 style: TextStyle(fontSize: 15, color: color),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
