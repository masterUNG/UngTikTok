import 'package:flutter/material.dart';

class MyConstant {
  static String routeAuthen = '/authen';
  static String routeMyService = '/myService';


  static String image1 = 'images/image1.png';
  static String image2 = 'images/image2.png';
  static String image3 = 'images/image3.png';

  static Color primary = const Color(0xffC53F3F);
  static Color dark = const Color(0xff560000);
  static Color light = const Color(0xfffd716a);

  BoxDecoration whiteBox() => BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      );

  TextStyle h1Style() => TextStyle(
        fontSize: 30,
        color: dark,
        fontWeight: FontWeight.bold,
      );

  TextStyle h2Style() => TextStyle(
        fontSize: 20,
        color: dark,
        fontWeight: FontWeight.w700,
      );

  TextStyle h3Style() => TextStyle(
        fontSize: 14,
        color: dark,
        fontWeight: FontWeight.normal,
      );

  TextStyle h3ButtonStyle() => const TextStyle(
        fontSize: 14,
        color: Colors.blue,
        fontWeight: FontWeight.w600,
      );
}
