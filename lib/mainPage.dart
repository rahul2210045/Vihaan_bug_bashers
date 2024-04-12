import 'package:flutter/material.dart';

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
              Container(child: Image.asset('assest/Group 79.png'),),
                            SizedBox(height: 10,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: 

[
  Image.asset('assest/Group 77.png',scale: 2,),
  Image.asset('assest/Group 76.png',scale: 2,)
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

