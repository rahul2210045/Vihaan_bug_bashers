import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class congt extends StatefulWidget {
  const congt({super.key});

  @override
  State<congt> createState() => _congtState();
}

class _congtState extends State<congt> {
  @override
  Widget build(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;
    var selectedValue;
    return Scaffold(
        backgroundColor: Colors.green.shade200,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Image.asset(
                          'assets/Group (2).png',
                          scale: 4,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Image.asset(
                          'assets/Well Done.png',
                          scale: 4,
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Image.asset(
                          'assets/Vector animation.png',
                          scale: 4,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Your Appointment set up successfully!',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    )))));
  }
}
