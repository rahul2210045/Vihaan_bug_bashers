import 'package:flutter/material.dart';

Widget settingBox(image, text1, context, page) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
    child: Container(
        height: screenHeight * 0.1,
        // width: screenWidth * width,
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Image.asset(
                  //   image,
                  //   scale: 1,
                  //   // height: screenHeight * 0.032,
                  // ),

                  // SizedBox(width: screenWidth * 0.1),

                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        image,
                        scale: 5,
                        // height: screenHeight * 0.032,
                      ),

                      SizedBox(width: screenWidth * 0.1),
                      Text(
                        text1,
                        style: TextStyle(
                          color: Color(0xFF00184A),
                          fontSize: 18.37,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          // height: 0,
                        ),
                      ),
                      // SizedBox(width: screenWidth * 0.2),
                      // Icon(
                      //   Icons.arrow_right_sharp,
                      //   size: 38.0,
                      // )
                    ],
                  )
                      // child: Text(
                      //   text1,
                      //   style: TextStyle(
                      //     color: Color(0xFF00184A),
                      //     fontSize: 18.37,
                      //     fontFamily: 'Poppins',
                      //     fontWeight: FontWeight.w500,
                      //     // height: 0,
                      //   ),
                      // ),
                      ),
                  // SizedBox(width: screenWidth * 0.27),
                  Icon(
                    Icons.arrow_right_sharp,
                    size: 38.0,
                  )
                ],
              ),
            ))),
  );
}