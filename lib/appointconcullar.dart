import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vihaan_hack/consularcard.dart';
// import 'package:vihaan/consularcard.dart';

class Appoint extends StatefulWidget {
  const Appoint({Key? key}) : super(key: key);

  @override
  State<Appoint> createState() => _AppointState();
}

class _AppointState extends State<Appoint> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(237,254,231,1),
         appBar: AppBar(
        title: Text(
          "Appoint a  Counsellor ",
          style: GoogleFonts.poppins(
            color: const Color.fromRGBO(91, 90, 90, 1),
            fontSize: 30,
            // fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(235, 253, 242, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(8))
                  // borderRadius: BorderRadius.circular(20.0),
                  
                ),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10.0),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CounselorCard(
                    counselorName: 'Dr. Ananya Sharma',
                    experience: '3',
                    qualification: 'Msc in Psychology',
                    languages: 'English, Hindi, Marathi',
                  ),
                  SizedBox(height: 10),
                  CounselorCard(
                    counselorName: 'Dr. Ananya Sharma',
                    experience: '3',
                    qualification: 'Msc in Psychology',
                    languages: 'English, Hindi, Marathi',
                  ),
                  SizedBox(height: 10),
                  CounselorCard(
                    counselorName: 'Dr. Ananya Sharma',
                    experience: '3',
                    qualification: 'Msc in Psychology',
                    languages: 'English, Hindi, Marathi',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
