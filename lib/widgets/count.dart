
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CountData extends StatelessWidget {
  double fontSize;
  String titleText;
  CountData({
    Key? key,
    this.fontSize = 0.0,
    this.titleText = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: GoogleFonts.aBeeZee(
          color: Colors.white,
          fontSize: fontSize,
          letterSpacing: 2,
          fontWeight: FontWeight.bold),
    );
  }
}
