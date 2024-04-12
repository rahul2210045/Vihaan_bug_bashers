import 'package:flutter/material.dart';

class CounselorCard extends StatelessWidget {
  // final String profileImagePath;
  final String counselorName;
  final String qualification;
  final String experience;
  final String languages;

  const CounselorCard({
    Key? key,
    // required this.profileImagePath,
    required this.counselorName,
    required this.qualification,
    required this.experience,
    required this.languages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final swidth = MediaQuery.of(context).size.width;
    final sheight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.green.shade400,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assest/Ellipse 2.png',
                  // scale: 3.5,
                ),
                Container(
                  width: swidth * 0.59,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        counselorName,
                        style: TextStyle(
                          color: Color(0xff046200),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: sheight * 0.01),
                      buildRowWithIconAndText(
                        'assest/Vector.png',
                        'Msc in Psychology',
                      ),
                      buildRowWithIconAndText(
                        'assest/briefcase 1.png',
                        '32 years of Experience',
                      ),
                      buildRowWithIconAndText(
                        'assest/comment 1.png',
                        'Hindi, English, Gujarati',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: sheight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assest/Vector (1).png',
                  // scale: 4,
                ),
                TextButton(
                  onPressed: () {  },
                  child: Text(
                    'Book Now',
                    style: TextStyle(
                      color: Colors.brown.shade600,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRowWithIconAndText(String imagePath, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // SizedBox(width: MediaQuery.of(context).size.width * 0.02),
        Image.asset(
          imagePath,
          // scale: 4,
        ),
        // SizedBox(width: MediaQuery.of(context as BuildContext).size.width * 0.025),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
