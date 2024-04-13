// import 'dart:ui';


import 'package:flutter/material.dart';


// import 'package:shared_preferences/shared_preferences.dart';

Widget button(String text, double height, double width, BuildContext context,
    Future<void> Function() onTapFunction) {
  // final screenHeight = MediaQuery.of(context).size.height;
  // final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () async {
      await onTapFunction();
      // if (context.mounted) {
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      // }
      // onTapFunction();
    },
    child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF4E82EA), Color(0xFF245BC9)],
          ),
          borderRadius: BorderRadius.all(Radius.circular(7)),
          boxShadow: [
            BoxShadow(),
          ],
        ),
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              // height: 0,
            ),
          ),
        )),
  );
}

Widget button3(
    String text, double height, double width, BuildContext context, page) {
  // final screenHeight = MediaQuery.of(context).size.height;
  // final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () async {
      // await onTapFunction();

      Navigator.push(context, MaterialPageRoute(builder: (context) => page));

      // onTapFunction();
    },
    child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF4E82EA), Color(0xFF245BC9)],
          ),
          borderRadius: BorderRadius.all(Radius.circular(7)),
          boxShadow: [
            BoxShadow(),
          ],
        ),
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              // height: 0,
            ),
          ),
        )),
  );
}

Widget button2(String text, double height, double width, BuildContext context,
    Future<void> Function() onTapFunction) {
  // final screenHeight = MediaQuery.of(context).size.height;
  // final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () async {
      await onTapFunction();
      // if (context.mounted) {
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      // }
      // onTapFunction();
    },
    child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF4E82EA), Color(0xFF245BC9)],
          ),
          borderRadius: BorderRadius.all(Radius.circular(7)),
          boxShadow: [
            BoxShadow(),
          ],
        ),
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              // height: 0,
            ),
          ),
        )),
  );
}

Widget buttonchat(String image, BuildContext context, page) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
    // onTapFunction();

    child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF4E82EA), Color(0xFF245BC9)],
          ),
          borderRadius: BorderRadius.all(Radius.circular(50)),
          boxShadow: [
            BoxShadow(),
          ],
        ),
        height: screenHeight * 0.1,
        width: screenWidth * 0.2,
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Image.asset(
            image,
            // height: screenHeight * 0.01,
            // fit: BoxFit.cover,
            scale: 5,
          ),
        )),
  );
}

Widget buttonchat2(String text1, String text2, String text3, String text4,
    BuildContext context) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
      onTap: () {
        var locale = Locale(text3, text4);
        // Get.updateLocale(locale);

        // Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      // onTapFunction();

      child: Container(
          decoration: BoxDecoration(
            // gradient: LinearGradient(
            //   // begin: Alignment(0.00, -1.00),
            //   // end: Alignment(0, 1),
            //   // width:2;
            //   // colors: Color(0xFF245BC9),
            // ),

            borderRadius: BorderRadius.all(Radius.circular(6)),
            border: Border.all(
              color: Color(0xFF245BC9), // Set the border color
              width: 2.0, // Set the border width
            ),

            // boxShadow: [
            //   BoxShadow(),
            // ],
          ),
          height: screenHeight * 0.15,
          width: screenWidth * 0.3,
          child: Column(children: [
            SizedBox(height: screenHeight * 0.01),
            Text(
              text1,
              style: TextStyle(
                color: Color(0xFF245BC9),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                // height: 0,
              ),
            ),
// SizedBox(height: screenHeight * 0.01),
            Text(
              text2,
              style: TextStyle(
                color: Color(0xFF245BC9),
                fontSize: 40,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                // height: 0,
              ),
            )
          ])));
  // );
}

// import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  // final String Bold;
  final Color? color;
  final FontStyle? fontStyle;
  final double? fontSize;
  final TextAlign? textAlign;
  final String? fontfamily;

  const CustomText({
    super.key,
    required this.text,
    // this.Bold,
    required this.fontStyle,
    required this.color,
    this.fontSize,
    this.textAlign,
    this.fontfamily,
  });

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return Text(
      text,
      style: TextStyle(
        // fontFamily: ,
        fontWeight: FontWeight.w500,
        fontFamily: fontfamily,
        color: color ?? Colors.white,
        fontSize: fontSize ?? 10,
        fontStyle: fontStyle ?? FontStyle.normal,
      ),
    );
  }
}

class CustomText1 extends StatelessWidget {
  final String text;
  // final String Bold;
  final Color? color;
  final FontStyle? fontStyle;
  final double? fontSize;
  final TextAlign? textAlign;
  final String? fontfamily;

  const CustomText1({
    super.key,
    required this.text,
    // this.Bold,
    required this.fontStyle,
    required this.color,
    this.fontSize,
    this.textAlign,
    this.fontfamily,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        // fontFamily: ,
        fontWeight: FontWeight.w600,
        fontFamily: fontfamily,
        color: color ?? Colors.white,
        fontSize: fontSize ?? 10,
        fontStyle: fontStyle ?? FontStyle.normal,
      ),
    );
  }
}

//  import 'package:flutter/material.dart';

// Widget buildtextfiled(BuildContext context, TextEditingController controller,
//       String hinttext, bool obscure, Null Function() param4,String? Function(String?) validator) {
//     return Container(
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//             color: const Color.fromRGBO(148, 108, 195, 0.25).withOpacity(0.2),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       margin: const EdgeInsets.all(15),
//       child: TextFormField(
//         controller: controller,
//         obscureText: obscure,
//         // enabled: false,
//         style: const TextStyle(color: Colors.black),
//         decoration: InputDecoration(
//             fillColor: const Color.fromRGBO(238, 238, 238, 1),
//             filled: true,
//             hintText: hinttext,
//             hintStyle: const TextStyle(color: Colors.grey),
//             focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide: BorderSide.none
//                 // borderSide: const BorderSide(color: Colors.blue),
//                 ),
//             enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide: BorderSide.none),
//             // disabledBorder: OutlineInputBorder()

//             // suffixText: "hbchjdbch",

//             suffixStyle: const TextStyle(color: Colors.indigo)),
//              validator: validator,
//       ),
//     );
//   }


