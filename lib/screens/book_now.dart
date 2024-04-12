import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookNow extends StatefulWidget {
  const BookNow({super.key});

  @override
  State<BookNow> createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  @override
  Widget build(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;
    var selectedValue;
    return Scaffold(
        backgroundColor: Colors.green.shade200,
        appBar: AppBar(
          backgroundColor: Colors.green.shade600,
          leading: Icon(
            CupertinoIcons.arrow_left,
            color: Colors.brown,
          ),
          title: const Text(
            "Book Now",
            style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.brown)),
            IconButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         // builder: (_) => ProfileScreen(
                  //         //       user: list[0],
                  //         //     )
                  //         builder: (_) => ()));
                },
                icon: Icon(Icons.more_vert, color: Colors.brown))
          ],
        ),

        //floating button to add new user
        // floatingActionButton: Padding(
        //   padding: const EdgeInsets.only(bottom: 10),
        //   child: FloatingActionButton(
        //     onPressed: () async {
        //       await APIs.auth.signOut();
        //       await GoogleSignIn().signOut();
        //     },
        //     child: Icon(Icons.add_comment_outlined),
        //   ),
        // ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(height: sheight * 0.05),
                        Container(
                          // height: sheight*0.2,
                          width: swidth * 0.9,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xff00194A), width: 1.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: DropdownButton<String>(
                              value: selectedValue,
                              // _maincatController =selectedValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  var selectedValue = newValue!;
                                });
                              },
                              underline: Container(),
                              items: <String>[
                                'Abuse & Category',
                                'Academiv',
                                'Career',
                                'LGBTQIA+',
                                'Psychological Disorders',
                                'Relatioship',
                                'Self Improvement',
                                'Sexual Wellness',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                        color: Color(0xff617193), fontSize: 20),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        Text(
                          'So that we know whats troubling you',
                          style: TextStyle(fontSize: 15, color: Colors.brown),
                        ),
                        SizedBox(height: sheight * 0.06),
                        Container(
                          // height: sheight*0.2,
                          width: swidth * 0.9,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xff00194A), width: 1.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: DropdownButton<String>(
                              value: selectedValue,
                              // _maincatController =selectedValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  var selectedValue = newValue!;
                                });
                              },
                              underline: Container(),
                              items: <String>[
                                'Relationship Issue',
                                'Pre-Maritial Jitters',
                                'Marital Adjustment Issues',
                                'Extra martial relationdship',
                                'Divorce/Seperation',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                        color: Color(0xff617193), fontSize: 20),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        Text(
                          'Could you tell us a little more',
                          style: TextStyle(fontSize: 15, color: Colors.brown),
                        ),
                      ],
                    )))));
  }
}
