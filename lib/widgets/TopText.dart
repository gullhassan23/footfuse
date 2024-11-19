// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TopTextData extends StatelessWidget {
  String text;
  bool isActive;
  Function onTap;
  TopTextData({
    Key? key,
    this.text = '',
    this.isActive = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 10.h, bottom: 10.h, left: 10.w, right: 10.w),
      child: GestureDetector(
        onTap: () => onTap(),
        child: Container(
          child: Column(
            children: [
              Text(
                text,
                style: GoogleFonts.aBeeZee(
                    color: isActive ? Colors.green : Colors.white,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
              SizedBox(
                height: 5,
              ),
              Visibility(
                visible: isActive,
                child: Container(
                  height: 3.sp,
                  width: 70.sp,
                  color: Colors.green,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
