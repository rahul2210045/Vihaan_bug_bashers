import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vihaan_hack/Community.dart';
import 'package:vihaan_hack/screens/assesment.dart';
import 'package:vihaan_hack/screens/helpline.dart';
import 'package:vihaan_hack/screens/instruction.dart';

class Homescreen1 extends StatefulWidget {
  const Homescreen1({super.key});

  @override
  State<Homescreen1> createState() => _Homescreen1State();
}

class _Homescreen1State extends State<Homescreen1> {
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
      drawer: Menu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                child: Text("Welcome back, Sarina!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              ),
              SizedBox(height: 10,),
                Container(
                child: Text("How are you feeling today ?",style: TextStyle(fontSize: 10)),
              ),
                SizedBox(height: 10,),
                Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                          Image.asset('assest/Happy.png'),
                           Image.asset('assest/Focus.png'),
                             Image.asset('assest/Calm.png'),
                               Image.asset('assest/Relax.png'),
                  
                    ],
                  ),
                  
                )
              ),
              SizedBox(height: 10,),
              InkWell(child: Image.asset('assest/Group 79.png'),onTap:(){

                // asdfghjklkjhgfdsdfghjklkjhgfdfghjklkjhgfdsdfghjk

              } ,),
                            SizedBox(height: 10,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: 

[
  InkWell(child: Image.asset('assest/Group 77.png',scale: 2,),onTap:(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> comm()));
  },),
  InkWell(child: Image.asset('assest/Group 76.png',scale: 2,),onTap:(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> comm()));
  },)
],),
SizedBox(height: 10,),
Container(child: Text("“It is better to conquer yourself than to win a thousand battles”",style: TextStyle(fontSize: 15, ),),),
SizedBox(height: 10,),
Container(child: Image.asset('assest/Group 81@2x.png'),),
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
