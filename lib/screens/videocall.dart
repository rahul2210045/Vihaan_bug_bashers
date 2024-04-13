import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vihaan_hack/appointconcullar.dart';
import 'package:vihaan_hack/screens/assesment.dart';
import 'package:vihaan_hack/screens/helpline.dart';
import 'package:vihaan_hack/screens/instruction.dart';

class videocall extends StatefulWidget {
  const videocall({super.key});

  @override
  State<videocall> createState() => _videocallState();
}

class _videocallState extends State<videocall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 254, 231, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(237, 254, 231, 1),
        title: Row(
          children: [CircleAvatar(backgroundColor: Colors.blueAccent,backgroundImage: AssetImage('assest/Ellipse 2.png'),),Spacer(),Icon(Icons.notifications)],
        ),
      ),
      // drawer: Menu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
          Container(
  padding: EdgeInsets.all(20.0),
  decoration: BoxDecoration(
    color: Color.fromRGBO(107, 206, 142, 1),
    borderRadius: BorderRadius.circular(20.0),
    // border: Border.all(
    //   // color: Colors.grey[400],
    // ),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Connect Your Counsellor',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10.0),
      Text(
        'Sahana V, Msc in Clinical Psychology',
        style: TextStyle(
          fontSize: 10.0,
        ),
      ),
      SizedBox(height: 10.0),
      Text(
        '7:30 PM - 8:30 PM',
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.grey[600],
        ),
      ),
      SizedBox(height: 20.0),
      TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Appoint()));
        },
        child: Row(

          children: [
            // Icon(Icons.star_rate),
            Text(
              'Join Now',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            // SizedBox()
            SizedBox(width: 8,),
            Image.asset('assest/Group (1).png')
          ],
        ),
        // color: Colors.blue,
        // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(20.0),
        // ),
      ),
    ],
  ),
),
SizedBox(height: 20,),
  Container(
  padding: EdgeInsets.all(20.0),
  decoration: BoxDecoration(
    color: Color.fromRGBO(107, 206, 142, 1),
    borderRadius: BorderRadius.circular(20.0),
    // border: Border.all(
    //   // color: Colors.grey[400],
    // ),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Let’s play a Quiz',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10.0),
      Text(
        'A fun way to explore your Mental Health.',
        style: TextStyle(
          fontSize: 10.0,
        ),
      ),
      // SizedBox(height: 10.0),
      // Text(
      //   '7:30 PM - 8:30 PM',
      //   style: TextStyle(
      //     fontSize: 16.0,
      //     color: Colors.grey[600],
      //   ),
      // ),
      SizedBox(height: 20.0),
      TextButton(
        onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Assessment()));

        },
        child: Row(

          children: [
            // Icon(Icons.star_rate),
            Text(
              'Click Here',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            // SizedBox()
            SizedBox(width: 8,),
            Image.asset('assest/Group (1).png')
          ],
        ),
        // color: Colors.blue,
        // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(20.0),
        // ),
      ),
    ],
  ),
),
SizedBox(height: 20,),






  Container(
  padding: EdgeInsets.all(20.0),
  decoration: BoxDecoration(
    color: Color.fromRGBO(107, 206, 142, 1),
    borderRadius: BorderRadius.circular(20.0),
    // border: Border.all(
    //   // color: Colors.grey[400],
    // ),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Image.asset('assest/Ellipse 2.png'),
          SizedBox(width: 10,),
          Column(
            children: [
              Text(
                'Let’s play a Quiz',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
                   Text(
                'Msc in Clinical Psychology',
                style: TextStyle(
                  fontSize: 10.0,
                  // fontWeight: FontWeight.w500,
                ),
              ),

            ],
          ),
        ],
      ),
      Divider(),
      SizedBox(height: 10.0),
      Row(
        children: [
          Image.asset('assest/Vector (1).png'),
          SizedBox(width: 10,),
          Text(
            '31st March ‘22',
            style: TextStyle(
              fontSize: 10.0,
            ),
          ),
          SizedBox(width: 10,),
            //  Image.asset('assest/Vector (1).png'),
             Icon(Icons.watch_later_outlined,color: Colors.grey,),
          SizedBox(width: 10,),
          Text(
            '7:30 PM - 8:30 PM',
            style: TextStyle(
              fontSize: 10.0,
            ),
          ),
        ],
      ),
      // SizedBox(height: 10.0),
      // Text(
      //   '7:30 PM - 8:30 PM',
      //   style: TextStyle(
      //     fontSize: 16.0,
      //     color: Colors.grey[600],
      //   ),
      // ),
      SizedBox(height: 20.0),
      Row(
        children: [
          TextButton(
            onPressed: () {
              
            },
            child: Row(
          
              children: [
                // Icon(Icons.star_rate),
                Text(
                  'Click Here',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                // SizedBox()
                SizedBox(width: 8,),
                // Image.asset('assest/Group (1).png')
              ],
            ),
            // color: Colors.blue,
            // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(20.0),
            // ),
          ),
           TextButton(
            onPressed: () {
              
            },
            child: Row(
          
              children: [
                // Icon(Icons.star_rate),
                Text(
                  'Join Now',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                // SizedBox()
                SizedBox(width: 8,),
                // Image.asset('assest/Group (1).png')
              ],
            ),
            // color: Colors.blue,
            // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(20.0),
            // ),
          ),
        ],
      ),
    ],
  ),
)


            ],
          ),
        ),
      ),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    Color color = Colors.black;
    return Drawer(
      backgroundColor: Colors.white,
      child: Container(
        color: Color.fromARGB(255, 206, 255, 223),
        child: Padding(
          padding: EdgeInsets.only(top: 40, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Home',
                      textScaleFactor: 1,
                      style: TextStyle(fontSize: 25, color: color),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Assessment()));
                      //     Navigator.push(context,
                      // MaterialPageRoute(builder: (context) => WelcomeScreen()));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.health_and_safety,
                      color: Colors.black,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Self Assesment',
                      textScaleFactor: 1,
                      style: TextStyle(fontSize: 25, color: color),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                child: Row(
                  children: [
                    Icon(
                      Icons.book_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Instructions',
                      textScaleFactor: 1,
                      style: TextStyle(fontSize: 25, color: color),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Instruction()));
                      //        Navigator.push(context,
                      // MaterialPageRoute(builder: (context) => WelcomeScreen()));
                },
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Helpline',
                      textScaleFactor: 1,
                      style: TextStyle(fontSize: 25, color: color),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Helpline()));
                },
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.stethoscope,
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Smart Prediction',
                      textScaleFactor: 1,
                      style: TextStyle(fontSize: 25, color: color),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             Prediction(HealthValue(), stepx!)));
                },
              ),
              SizedBox(height: height / 2),
              Text(
                'Copyright©2023 | @Ideavengers',
                textAlign: TextAlign.center,
                textScaleFactor: 1,
                style: TextStyle(fontSize: 15, color: color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
