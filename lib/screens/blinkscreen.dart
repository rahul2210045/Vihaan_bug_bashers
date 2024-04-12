// import 'dart:async';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vihaan_hack/screens/splashScreen.dart';
// import 'package:plantopia/screens/introscreen.dart';

// import 'welcome_screeen.dart';
class BlinkScreen extends StatefulWidget {
  const BlinkScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<BlinkScreen> createState() => _BlinkScreenState();
}

class _BlinkScreenState extends State<BlinkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your splash screen image or logo here
            Image.asset('assest/image_7-removebg-preview.png'),
            SizedBox(height: 20),
            Text('MitrSerenity',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.w600,fontSize: 20),)

          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SplashScreen(),
          ));
    });
  }
}